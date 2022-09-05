import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../widgets/card.dart';
import '../../widgets/theme_dropdown_button.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

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
                  children: const [
                    HeadingCard(
                      heading: "Funnels",
                      sideHeading: "settings",
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
                    icon: const Icon(Icons.exit_to_app_rounded))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
