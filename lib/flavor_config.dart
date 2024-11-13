import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

///=============================== App Flavors  ================================

enum Flavor { dev, stg, prod }

///============================ App Flavor Values ==============================

class FlavorsValues {
  late String _envType;
  late String _appID;
  late String _bundleID;
  late String _baseURL;
  // late String _apiURL;
  late String _notifURL;
  late String _sentryURL;
  late String _dynamicLinkURL;
}

///======================== App Flavor Configuration ===========================

class FlavorConfig extends FlavorsValues {
  FlavorConfig._();
  static final FlavorConfig instance = FlavorConfig._();

  Future<void> init({required Flavor flavor}) async {
    debugPrint("${"=" * 35}\n Initializing Flavor Configuration \n${"=" * 35}");

    /// ==================== Switching Between Flavors  ========================
    switch (flavor) {
      case Flavor.dev:
        await dotenv.load(fileName: '.env.dev');
      case Flavor.stg:
        await dotenv.load(fileName: '.env.stg');
      case Flavor.prod:
        await dotenv.load(fileName: '.env.prod');
    }

    /// ========================= Set Flavors Values ===========================
    _envType = dotenv.get('ENV_TYPE');
    _appID = dotenv.get('APP_ID');
    _bundleID = dotenv.get('BUNDLE_ID');
    _baseURL = dotenv.get('BASE_URL');
    // _apiURL = dotenv.get('API_URL');
    _notifURL = dotenv.get('NOTIF_URL');
    _sentryURL = dotenv.get('SENTRY_URL');
    _dynamicLinkURL = dotenv.get('DYNAMIC_LINK_URL');

    ///=========================================================================

    debugPrint('ENV_TYPE= $_envType \nAPP_ID= $_appID \nBUNDLE_ID= $_bundleID'
        '\nBASE_URL= $_baseURL \n/*API_URL=  \nNOTIF_URL= $_notifURL'
        '\nSENTRY_URL= $_sentryURL \nDYNAMIC_LINK_URL= $_dynamicLinkURL'
        '\n${'=' * 35}');
  }

  /// ========================= Get Flavors Values =============================
  String get envType => _envType;
  String get appID => _appID;
  String get bundleID => _bundleID;
  String get baseURL => _baseURL;
  // String get apiURL => _apiURL;
  String get notifURL => _notifURL;
  String get sentryURL => _sentryURL;
  String get dynamicLinkURL => _dynamicLinkURL;
  bool isDevelopment() => envType == 'dev';
  bool isStaging() => envType == 'stg';
  bool isProduction() => envType == 'prod';
}
