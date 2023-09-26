import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefService {
  static late SharedPreferences _preferences;
  static late PrefService _instance;

  static Future<PrefService> getInstance() async {
    _instance = PrefService();
    _preferences = await SharedPreferences.getInstance();
    return _instance;
  }

  void setUserData({
    required Map<String, dynamic> data,
  }) {
    _preferences.setString('userData', json.encode(data));
  }

  Future<bool> clearUserData() async => _preferences.clear();

  String get userToken => _preferences.getString('userToken') ?? '';
  set userToken(String value) => _preferences.setString('userToken', value);
}
