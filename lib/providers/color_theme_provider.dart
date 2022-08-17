import 'package:flutter/material.dart';

class ColorThemeProvider extends ChangeNotifier {
  bool isDark = false;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
// Provider.of<ColorThemeProvider>(context, listen: false).changeTheme();
