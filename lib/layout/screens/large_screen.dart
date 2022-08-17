import 'package:flutter/material.dart';
import 'package:funnel/main.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/card.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:provider/provider.dart';

import '../../widgets/change_theme_button.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HeadingCard(
                        isDark: isDarkMode,
                      ),
                      HeadingCard(
                        isDark: isDarkMode,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const ChangeThemeButton(),
                  const SizedBox(height: 20),
                  CustomText(
                    text: "The value is " +
                        "${Provider.of<ColorThemeProvider>(context).isDark}",
                    color: Provider.of<ColorThemeProvider>(context).isDark
                        ? Colors.black
                        : Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
