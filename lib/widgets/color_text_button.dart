import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:funnel/styles/colors.dart';

class ColorTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const ColorTextButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: primaryAccentColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.all(13.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )),
    );
  }
}
