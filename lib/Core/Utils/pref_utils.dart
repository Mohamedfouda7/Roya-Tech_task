
import '../app_exports.dart';
class PrefUtils {
  static SharedPreferences? sharedPreferences;

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      sharedPreferences = value;
    });
  }

 static  Future<void> init() async {
    sharedPreferences ??= await SharedPreferences.getInstance();
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    sharedPreferences!.clear();
  }
}
