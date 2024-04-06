import 'package:graduation_project/core/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyShared {
  static SharedPreferences? sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static putString({required MySharedKeys key, required String value}) async {
    await sharedPreferences?.setString(key.name, value);
  }

  static String getString({required MySharedKeys key}) {
    return sharedPreferences?.getString(key.name) ?? '';
  }

  static putInt({required MySharedKeys key, required int value}) async {
    await sharedPreferences?.setInt(key.name, value);
  }

  static int getInt({required MySharedKeys key}) {
    return sharedPreferences?.getInt(key.name) ?? 0;
  }

  static putDouble({required MySharedKeys key, required double value}) async {
    await sharedPreferences?.setDouble(key.name, value);
  }

  static double getDouble({required MySharedKeys key}) {
    return sharedPreferences?.getDouble(key.name) ?? 0.0;
  }

  static putBoolean({required MySharedKeys key, required bool value}) async {
    await sharedPreferences?.setBool(key.name, value);
  }

  static bool getBoolean({required MySharedKeys key}) {
    return sharedPreferences?.getBool(key.name) ?? false;
  }

  static Future<void> remove({required MySharedKeys key}) async {
    await sharedPreferences?.remove(key.name);
  }

  static Future<void> clear() async {
    await sharedPreferences?.clear();
  }
}
