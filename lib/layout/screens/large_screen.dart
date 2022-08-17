// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:funnel/widgets/card.dart';
import 'package:funnel/widgets/theme_dropdown_button.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HeadingCard(),
                    HeadingCard(),
                  ],
                ),
                const SizedBox(height: 50),
                const SizedBox(height: 40),
                ThemeDropdownButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
