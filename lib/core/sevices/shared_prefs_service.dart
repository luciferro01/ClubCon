import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService {
  static const String isLoggedInKey = 'isLoggedIn';
  final SharedPreferences _prefs;
  final _isLoggedIn = false.obs;

  SharedPreferencesService(this._prefs);

  bool get isLoggedIn => _isLoggedIn.value;

  @override
  Future<SharedPreferencesService> init() async {
    _isLoggedIn.value = _prefs.getBool(isLoggedInKey) ?? false;
    return this;
  }

  Future<void> setIsLoggedIn(bool value) async {
    await _prefs.setBool(isLoggedInKey, value);
    _isLoggedIn.value = value;
  }

  Future<void> clearAllData() async {
    await _prefs.clear();
    _isLoggedIn.value = false;
  }
}
