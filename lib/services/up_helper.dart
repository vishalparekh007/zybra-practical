import 'package:hive/hive.dart';

import '../models/user_preferences.dart';

class PreferencesHelper {
  static Future<void> savePreference(UserPreferences preferences) async {
    var box = await Hive.openBox<UserPreferences>('preferencesBox');
    box.put('userPreferences', preferences);
  }

  static Future<UserPreferences?> loadPreferences() async {
    var box = await Hive.openBox<UserPreferences>('preferencesBox');
    return box.get('userPreferences');
  }
}
