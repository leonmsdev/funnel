import 'package:flutter/material.dart';
import 'package:funnel/controllers/screen_controller.dart';
import 'package:funnel/layout/screens/large_screen.dart';
import 'package:funnel/layout/screens/medium_screen.dart';
import 'package:funnel/layout/screens/small_screen.dart';

// ignore: use_key_in_widget_constructors
class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: const ScreenController(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
