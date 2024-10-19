import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  CacheService._privateConstructor();
  static final CacheService _instance = CacheService._privateConstructor();
  static CacheService get instance => _instance;

  late SharedPreferences _pref;

  Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
    debugPrint('Cache Service Has Been initialized');
  }

  Future<bool> setData({required String key, required value}) async {
    bool result;

    switch (value.runtimeType) {
      case const (String):
        result = await _pref.setString(key, value);
      case const (bool):
        result = await _pref.setBool(key, value);
      case const (int):
        result = await _pref.setInt(key, value);
      case const (double):
        result = await _pref.setDouble(key, value);
      case const (List<String>):
        result = await _pref.setStringList(key, value as List<String>);
      default:
        result = false;
    }
    debugPrint(result ? 'Set Data Successfully' : 'Failed To Set Data');
    debugPrint(
      'CacheClient Set Value = $value, Key = $key, '
      'DataType =${value.runtimeType}',
    );
    return result;
  }

  getData({required String key}) {
    final value = _pref.get(key);
    debugPrint(
        'CacheClient Got Value = $value, Key = $key, DataType =${value.runtimeType}');
    return value;
  }

  Future<bool> removeData({required String key}) async {
    final result = await _pref.remove(key);
    debugPrint('CacheClient Removed The Value ? $result, Key = $key');
    return result;
  }

  Future<bool> clearData() async {
    final result = await _pref.clear();
    debugPrint('CacheClient Cleared The Data ? $result');
    return result;
  }

  Future<void> setCacheLanguageCode(String languageCode) async {
    debugPrint('Cached Language Code = $languageCode');
    await setData(key: 'LOCALE', value: languageCode);
  }

  getCacheLanguageCode() {
    final cacheLanguageCode = getData(key: 'LOCALE');
    debugPrint('Got Language Code = $cacheLanguageCode');
    if (cacheLanguageCode != null) {
      return cacheLanguageCode;
    } else {
      return 'en';
    }
  }
}
