import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/services/network_services/network.dart';
import '../../../data/data_source/remote/auth_remote_data_source.dart';
import '../../../data/repo/auth_repository.dart';

part 'community_signup_bloc.freezed.dart';
part 'community_signup_event.dart';
part 'community_signup_state.dart';

enum SignupCommunityFieldType { firstName, lastName, email, phone }

enum SocialMediaSignup { google, x, facebook }

class CommunitySignupBloc
    extends Bloc<CommunitySignupEvent, CommunitySignupState> {
  static CommunitySignupBloc get(context) =>
      BlocProvider.of(context, listen: false);

  late final BaseAuthRepository authRepository;
  late final GlobalKey<FormState>? formKey;
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameNameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final FocusNode firstNameFocusNode;
  late final FocusNode lastNameFocusNode;
  late final FocusNode emailFocusNode;
  late final FocusNode phoneFocusNode;
  bool passwordVisibility = false;
  bool formFilled = false;

  CommunitySignupBloc() : super(const CommunitySignupState.initial()) {
    authRepository = AuthRepository(AuthRemoteDataSource());
    formKey = GlobalKey();
    firstNameController = TextEditingController();
    firstNameFocusNode = FocusNode();
    lastNameNameController = TextEditingController();
    lastNameFocusNode = FocusNode();
    emailController = TextEditingController();
    emailFocusNode = FocusNode();
    phoneController = TextEditingController();
    phoneFocusNode = FocusNode();
    on<CommunitySignupEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
