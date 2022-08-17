import 'package:flutter/material.dart';
import 'package:funnel/controllers/screen_controller.dart';
import 'package:funnel/layout/screens/large_screen.dart';
import 'package:funnel/layout/screens/medium_screen.dart';
import 'package:funnel/layout/screens/small_screen.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:provider/provider.dart';

import '../styles/colors.dart';

class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ColorThemeProvider>(context).isDark
          ? backgroundColor
          : darkBackgroundColor,
      key: scaffoldKey,
      body: const ScreenController(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
