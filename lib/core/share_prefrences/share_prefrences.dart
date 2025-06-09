import 'dart:convert';

import 'package:bloc_test/di/getit_confit.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  @LazySingleton() // Register SharedPreferences itself as a LazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@singleton
class SharedPref {
SharedPreferences prefs;
SharedPref(this.prefs);

  void storeBool(String key, bool value) => prefs.setBool(key, value);
  bool getBool(String key) => prefs.getBool(key) ?? false;
  void storeString(String key, String value) => prefs.setString(key, value);
  String getString(String key) => prefs.getString(key) ?? '';
}


void storeBool(String key, bool value) => getIt<SharedPref>().storeBool(key, value);
bool getBool(String key) => getIt<SharedPref>().getBool(key);
void storeString(String key, String value) => getIt<SharedPref>().storeString(key, value);
String getString(String key) => getIt<SharedPref>().getString(key);

void storeObject(String key,Map<String, dynamic> data) => getIt<SharedPref>().storeString(key, jsonEncode(data));
Map<String, dynamic> getObject(String key) => jsonDecode(getIt<SharedPref>().getString(key));
