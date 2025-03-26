import 'package:shared_preferences/shared_preferences.dart';

Future<bool> showIntroduction(bool show) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.setString('showIntroduction', show ? 'true' : 'false');
}

Future<bool> getShowIntroduction() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? show = prefs.getString('showIntroduction');

  if (show == null) {
    return true;
  }
  return show == 'true';
}
