import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityService {
  ConnectivityService._privateConstructor();
  static final ConnectivityService _instance =
      ConnectivityService._privateConstructor();
  static ConnectivityService get instance => _instance;

  ValueNotifier<bool> isConnected = ValueNotifier(false);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  bool isInternetConnected(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      isConnected.value = true;
      return true;
    } else if (result.contains(ConnectivityResult.none)) {
      isConnected.value = false;
      return false;
    }
    return false;
  }
}
