
import 'package:tanta_app/app/app_prefs.dart';
import 'package:tanta_app/app/di.dart';
import 'package:tanta_app/presentation/resources/assets_manager.dart';

final AppPreferences _appPreferences = instance<AppPreferences>();

class Constant {
  static const String baseurl = "https://app-mobile.tanta.edu.eg/";
  static const String empty = "";
  static const int userData = 0;
  static const int exercises = 1;

  static String token = _appPreferences.getToken();
  static const int zero = 0;
  static const Duration timeout = Duration(
      milliseconds: 60000); //this time by ms
}