import 'package:flutter/material.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  TextAlign? textAlign = TextAlign.left;

  CustomText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: fontSize ?? 13,
          color: color ??
              (Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white),
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      );
    });
  }
}
