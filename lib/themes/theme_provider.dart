import 'package:flutter/material.dart';
import 'package:starter_proj/themes/dark_mode.dart';
import 'package:starter_proj/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData value) {
    _themeData = value;
    notifyListeners(); // updates the UI when theme changes
  }

  bool get isDarkMode => _themeData == darkMode;

  void toggleTheme() {
    themeData = isDarkMode ? lightMode : darkMode;
  }
}
