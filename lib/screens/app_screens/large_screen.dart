// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/widgets/card.dart';
import 'package:funnel/widgets/theme_dropdown_button.dart';
import 'package:provider/provider.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthProvider>(context);

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
                    HeadingCard(
                      heading: "Builder",
                      sideHeading: "settings",
                      onTap: () {
                        Navigator.pushNamed(context, '/app_builder');
                      },
                    ),
                    HeadingCard(
                      heading: "CICD",
                      sideHeading: "automate it",
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                ThemeDropdownButton(),
                const SizedBox(height: 40),
                IconButton(
                    onPressed: () async {
                      await authService.signOut();
                    },
                    icon: Icon(Icons.exit_to_app_rounded))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
