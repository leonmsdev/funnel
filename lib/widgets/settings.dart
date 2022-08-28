import 'package:flutter/material.dart';
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
            color: Colors.white,
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
                    text: "Feel free to customise magics to your needs."),
                const SizedBox(
                  height: 20,
                ),
                const ThemeDropdownButton(),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        width: 130,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const HeroIcon(
                              HeroIcons.arrowNarrowLeft,
                              size: 15,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            CustomText(
                              text: 'Zurück zum Login',
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
