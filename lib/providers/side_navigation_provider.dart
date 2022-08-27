import 'package:flutter/material.dart';

class SideNavigationProvider extends ChangeNotifier {
  bool currentTheme = true;

  changeSideNavigationState() async {
    currentTheme = !currentTheme;
    notifyListeners();
  }
}
