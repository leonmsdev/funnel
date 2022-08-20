import 'package:flutter/material.dart';
import 'package:funnel/controllers/screen_controller.dart';
import 'package:funnel/screens/login_screens/normal_login_screen.dart';
import 'package:funnel/screens/login_screens/small_login_screen.dart';

// ignore: use_key_in_widget_constructors
class LoginLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: const ScreenController(
        largeScreen: NormalLoginScreen(),
        mediumScreen: NormalLoginScreen(),
        smallScreen: SmallLoginScreen(),
      ),
    );
  }
}
