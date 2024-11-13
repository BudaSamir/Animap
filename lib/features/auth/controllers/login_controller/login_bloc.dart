import 'package:animap_app/core/extensions/datatype_helper.dart';
import 'package:animap_app/features/auth/data/models/login_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/services/cache_services/keys.dart';
import '../../../../core/services/cache_services/storage_service.dart';
import '../../data/data_source/remote/auth_remote_data_source.dart';
import '../../data/repo/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

enum LoginFieldType { email, password }

enum SocialMediaLogin { google, x, facebook }

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  static LoginBloc get(context) => BlocProvider.of(context, listen: false);
  late final BaseAuthRepository authRepository;
  late final GlobalKey<FormState>? formKey;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  bool passwordVisibility = false;
  bool formFilled = false;

  LoginBloc() : super(LoginState.initial()) {
    authRepository = AuthRepository(AuthRemoteDataSource());
    formKey = GlobalKey();
    emailController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordController = TextEditingController();
    passwordFocusNode = FocusNode();
    on<LoginEvent>((event, emit) {
      event.when(
          started: () {},

          /// ==================== Toggle Password Visibility ==================
          togglePasswordVisibility: () {
            passwordVisibility = !passwordVisibility;
            emit(LoginState.togglePasswordVisibility(passwordVisibility));
          },

          /// ==================== Form Fields Filling =========================
          formFieldFilling: (fieldText, fieldType) {
            switch (fieldType) {
              case LoginFieldType.email:
                emailController.text = fieldText;

              case LoginFieldType.password:
                passwordController.text = fieldText;
            }
            if (emailController.text.isNotNullAndNotEmpty &&
                passwordController.text.isNotNullAndNotEmpty) {
              formFilled = true;
            } else {
              formFilled = false;
            }
            emit(LoginState.formFieldFilling(formFilled));
          },

          /// ====================== Login Account =============================
          loginAccountEvent: () async {
            if (formKey!.currentState!.validate()) {
              formKey!.currentState!.save();
              emit(const LoginState.loginLoading());
              final result = await authRepository.login(LoginRequest(
                email: emailController.text,
                password: passwordController.text,
                rememberMe: false,
              ));
              Future.delayed(const Duration(seconds: 3));
              result.fold((l) => emit(const LoginState.loginFailure()),
                  (success) async {
                await Future.wait([
                  StorageService.instance
                      .write(key: Keys.email, value: success.user.email),
                  StorageService.instance
                      .write(key: Keys.password, value: passwordController.text)
                ]);
                StorageService.instance
                    .write(key: Keys.accessToken, value: success.token);

                emit(const LoginState.loginSuccess());
              });
            }
          },

          /// ==================== Social Media Login ==========================
          socialMediaLoginEvent: (SocialMediaLogin type) async {
            emit(const LoginState.loginLoading());
            switch (type) {
              case SocialMediaLogin.google:
                {
                  const List<String> scopes = <String>[
                    'email',
                    'https://www.googleapis.com/auth/contacts.readonly',
                  ];

                  GoogleSignIn _googleSignIn = GoogleSignIn(
                      // Optional clientId
                      // clientId: 'your-client_id.apps.googleusercontent.com',
                      // scopes: scopes,
                      );

                  GoogleSignInAccount? account = await _googleSignIn.signIn();
                  GoogleSignInAuthentication? accountInfo =
                      await account?.authentication;
                  print("Account ID = ${account?.id}");
                  print("Account Email = ${account?.email}");
                  print("Account DisplayName = ${account?.displayName}");
                  print("Account accessToken = ${accountInfo?.accessToken}");
                  print("Account idToken = ${accountInfo?.idToken}");
                }
              case SocialMediaLogin.x:
              // TODO: Handle this case.
              case SocialMediaLogin.facebook:
              // TODO: Handle this case.
            }
          });
    });
  }
}
