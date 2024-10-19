import 'package:flutter/material.dart';

import '../../core/utils/settings/settings_bloc.dart';

extension BlocHelper on BuildContext {
  SettingsBloc get settingsBloc => SettingsBloc.get(this);
}
