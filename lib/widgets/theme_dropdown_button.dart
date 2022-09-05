// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ThemeDropdownButton extends StatelessWidget {
  ThemeDropdownButton({Key? key, this.update}) : super(key: key);

  Function? update;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return DropdownButton<String>(
            value: provider.currentTheme,
            items: [
              DropdownMenuItem<String>(
                value: 'light',
                child: Text("Light"),
              ),
              DropdownMenuItem<String>(
                value: 'dark',
                child: Text("Dark"),
              ),
              DropdownMenuItem<String>(
                value: 'system',
                child: Text("System"),
              )
            ],
            onChanged: (String? value) {
              provider.changeTheme(value ?? 'system');
              update;
            });
      },
    );
  }
}
