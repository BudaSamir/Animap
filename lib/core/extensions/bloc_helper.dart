import 'package:flutter/material.dart';

import '../../core/utils/settings/settings_bloc.dart';
import '../../features/auth/controllers/forget_password_controller/forget_password_bloc.dart';
import '../../features/auth/controllers/login_controller/login_bloc.dart';
import '../../features/auth/controllers/signup_controllers/community_signup/community_signup_bloc.dart';

extension BlocHelper on BuildContext {
  SettingsBloc get settingsBloc => SettingsBloc.get(this);
  LoginBloc get login => LoginBloc.get(this);
  ForgetPasswordBloc get forgetPassword => ForgetPasswordBloc.get(this);
  CommunitySignupBloc get communitySignup => CommunitySignupBloc.get(this);
}
