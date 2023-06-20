import 'package:shared_preferences/shared_preferences.dart';
import 'package:quotlum/config/theme/colors.dart';

class ThemeColorDataSource {
  static Future<int> getAppBackgroundColor() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int colorValue = prefs.getInt('appBackgroundColor') ?? CustomColors.appBackgroundColor.value;

    return colorValue;
  }

  static Future<int> getAppbarContentColor() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int colorValue = prefs.getInt('appbarContentColor') ?? CustomColors.appbarContentColor.value;

    return colorValue;
  }
}
