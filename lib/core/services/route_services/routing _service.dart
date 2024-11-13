import 'dart:developer';

import 'package:animap_app/features/auth/views/screens/forget_password_screens/create_new_password_screen.dart';
import 'package:animap_app/features/auth/views/screens/forget_password_screens/otp_screen.dart';
import 'package:animap_app/features/auth/views/screens/login_screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/route_services/routes_names.dart';
import '../../../features/auth/controllers/forget_password_controller/forget_password_bloc.dart';
import '../../../features/auth/controllers/login_controller/login_bloc.dart';
import '../../../features/auth/controllers/signup_controllers/community_signup/community_signup_bloc.dart';
import '../../../features/auth/views/screens/forget_password_screens/forget_password_screen.dart';
import '../../../features/auth/views/screens/signup_screens/choose_role_screen.dart';
import '../../../features/auth/views/screens/signup_screens/community_member_signup_screen.dart';
import '../../../features/auth/views/screens/signup_screens/shelter_signup_screen.dart';
import '../../../features/auth/views/screens/signup_screens/veterinarian_signup_screen.dart';
import '../../widgets/no_connections.dart';

class RoutingService {
  static const initialRouteName = RoutesNames.login;
  static final _routeNameNotifier = ValueNotifier<String>(initialRouteName);
  static ValueNotifier<String> get routeNameNotifier => _routeNameNotifier;
  static String get routeName => _routeNameNotifier.value;

  static void onRouteChanged(String? routeName) {
    _routeNameNotifier.value = routeName ?? 'Error';
    log(_routeNameNotifier.value, name: 'Route');
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      ///========================= login =======================================
      case RoutesNames.login:
        return AppPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                  create: (context) => LoginBloc(),
                  child: const LoginScreen(),
                ));

      ///========================= ForgetPassword ===============================
      case RoutesNames.forgetPassword:
        return AppPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                  create: (context) => ForgetPasswordBloc(),
                  child: const ForgetPasswordScreen(),
                ));

      ///========================= OTP  ===============================
      // case RoutesNames.otp:
      //   return AppPageRoute(
      //       settings: settings, builder: (_) => const OtpScreen());

      case RoutesNames.otp:
        return AppPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                  create: (context) => ForgetPasswordBloc(),
                  child: const OtpScreen(),
                ));

      ///==================== Create New Password  =============================
      // case RoutesNames.otp:
      //   return AppPageRoute(
      //       settings: settings, builder: (_) => const OtpScreen());

      case RoutesNames.createNewPassword:
        return AppPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                  create: (context) => ForgetPasswordBloc(),
                  child: const CreateNewPasswordScreen(),
                ));

      ///========================= Choose Role  ================================

      case RoutesNames.chooseRole:
        return AppPageRoute(
            settings: settings, builder: (_) => const ChooseRoleScreen());

      ///========================= CommunityMember Signup  =====================

      case RoutesNames.communityMemberSignup:
        return AppPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                  create: (context) => CommunitySignupBloc(),
                  child: const CommunityMemberSignupScreen(),
                ));

      ///========================= Veterinarian Signup  ========================

      case RoutesNames.veterinarianSignup:
        return AppPageRoute(
            settings: settings,
            builder: (_) => const VeterinarianSignupScreen());

      ///========================= Shelter Signup  =============================

      case RoutesNames.shelterSignup:
        return AppPageRoute(
            settings: settings, builder: (_) => const ShelterSignupScreen());

      ///=========================== noConnections =============================
      case RoutesNames.noConnections:
        return AppPageRoute(
          settings: settings,
          builder: (_) => const NoConnections(),
        );

      default:
        return unDefinedRoute(settings);
    }
  }

  static Route<dynamic> unDefinedRoute(RouteSettings settings) {
    return AppPageRoute(
      settings: settings,
      builder: (_) => const Scaffold(
        body: Center(child: Text('No Route Found')),
      ),
    );
  }
}

class AppPageRoute extends CupertinoPageRoute<dynamic> {
  AppPageRoute({
    required Widget Function(BuildContext) builder,
    super.settings,
  }) : super(builder: (context) => builder(context));
}

class BaseRoute extends PageRouteBuilder<dynamic> {
  BaseRoute({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              Stack(children: [page]),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget widget) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
                parent: animation, curve: Curves.linearToEaseOut);

            return ScaleTransition(
              scale: tween.animate(curvedAnimation),
              child: widget,
            );
          },
        );
  Widget page;
}
