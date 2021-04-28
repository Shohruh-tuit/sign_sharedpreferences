import 'dart:convert';

import 'package:pdp_s3_sharedpreferences_homework/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  // Name Related
  //
  static storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }

  static Future<String> loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }

  static Future<bool> removeName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // User Related
  //
  static storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    prefs.setString("name", stringUser);
  }

  static Future<User> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = prefs.getString("user");
    if (stringUser == null || stringUser.isEmpty) {
      return null;
    }
    Map map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
}
