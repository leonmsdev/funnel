import 'package:flutter/material.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  TextAlign? textAlign = TextAlign.left;

  CustomText(
      {Key? key,
      required this.text,
      this.size,
      this.color,
      this.weight,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size ?? 13,
          color: color ??
              (Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white),
          fontWeight: weight ?? FontWeight.normal,
        ),
      );
    });
  }
}
