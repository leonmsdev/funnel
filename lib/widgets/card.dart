// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/color_theme_provider.dart';

// ignore: must_be_immutable
class HeadingCard extends StatelessWidget {
  String? heading;
  String? sideHeading;
  String imagePath;
  bool isDark = false;

  HeadingCard(
      {Key? key,
      this.heading,
      this.sideHeading,
      this.imagePath = 'illustration.jpg',
      required this.isDark})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("hello");
      },
      child: Container(
        width: 180,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Provider.of<ColorThemeProvider>(context).isDark
              ? Colors.white
              : Colors.black,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: .5,
            color: Provider.of<ColorThemeProvider>(context).isDark
                ? Colors.grey.withOpacity(.4)
                : Colors.black,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.03),
              blurRadius: 25,
              spreadRadius: 1,
              offset: Offset(
                0,
                2,
              ),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 130.0,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage("lib/styles/images/$imagePath"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Heading",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Provider.of<ColorThemeProvider>(context).isDark
                    ? Colors.black
                    : Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              "Sideheading",
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
