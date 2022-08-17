import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/color_theme_provider.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Provider.of<ColorThemeProvider>(context).isDark
          ? Colors.black.withOpacity(.05)
          : Colors.white.withOpacity(.05),
      onPressed: () {
        Provider.of<ColorThemeProvider>(context, listen: false).changeTheme();
      },
      icon: Icon(
        Provider.of<ColorThemeProvider>(context).isDark
            ? Icons.dark_mode
            : Icons.sunny,
        color: Provider.of<ColorThemeProvider>(context).isDark
            ? Colors.black
            : Colors.white,
      ),
    );
  }
}
