import 'package:flutter/material.dart';

import 'package:funnel/styles/colors.dart';

class ColorTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final double fontSize;

  const ColorTextButton(
      {Key? key, required this.onTap, required this.title, this.fontSize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryAccentColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
