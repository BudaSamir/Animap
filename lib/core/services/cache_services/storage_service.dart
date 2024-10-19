import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  StorageService._privateConstructor();
  static final StorageService _instance = StorageService._privateConstructor();
  static StorageService get instance => _instance;

  late final AndroidOptions androidOptions;
  late final IOSOptions iosOptions;
  late final FlutterSecureStorage storage;

  void init() {
    androidOptions = const AndroidOptions(encryptedSharedPreferences: true);
    iosOptions =
        const IOSOptions(accessibility: KeychainAccessibility.first_unlock);
    storage =
        FlutterSecureStorage(aOptions: androidOptions, iOptions: iosOptions);
  }

  Future<void> write({required String key, required dynamic value}) async {
    if (value is List<dynamic> || value is Map<dynamic, dynamic>) {
      // convert The value form List or Map To String like The API
      await storage.write(key: key, value: jsonEncode(value));
    } else {
      // if the value is int or double or.....
      await storage.write(key: key, value: value.toString());
    }
  }

  Future<String?> read({required String key}) async =>
      await storage.read(key: key);

  Future<List<dynamic>?> readList({required String key}) async {
    final value = await storage.read(key: key);
    return value == null ? null : List<dynamic>.from(jsonDecode(value) as List);
  }

  Future<Map<dynamic, dynamic>?> readMap({required String key}) async {
    final value = await storage.read(key: key);
    return value == null
        ? null
        : Map<dynamic, dynamic>.from(jsonDecode(value) as Map);
  }

  Future<Map<String, String>> readAll() async => await storage.readAll();

  Future<void> delete({required String key}) async =>
      await storage.delete(key: key);

  Future<void> deleteAll() async => await storage.deleteAll();
}
