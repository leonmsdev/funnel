import 'package:flutter/material.dart';
import 'package:funnel/main.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/card.dart';

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
            color: backgroundColor,
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
                  const SizedBox(
                    height: 50,
                  ),
                  const DarkModeButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DarkModeButton extends StatefulWidget {
  const DarkModeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<DarkModeButton> createState() => _DarkModeButtonState();
}

class _DarkModeButtonState extends State<DarkModeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print("object");
      },
      icon: const Icon(Icons.dark_mode),
    );
  }
}
