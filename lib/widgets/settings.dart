import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/theme_dropdown_button.dart';
import 'package:heroicons/heroicons.dart';

import 'custom_text.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 400,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : darkMenuBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'Settings',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const HeroIcon(
                        HeroIcons.xCircle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 27),
                CustomText(
                    text: "Feel free to customise Magics to your needs."),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                CustomText(text: "Change color theme:"),
                const ThemeDropdownButton(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Spacer(),
                    CustomText(text: 'Version: v0.0.1'),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
