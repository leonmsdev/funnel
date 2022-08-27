import 'package:flutter/material.dart';
import 'package:funnel/widgets/custom_app_bar.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/side_navigation.dart';

// ignore: must_be_immutable
class AppBuilder extends StatelessWidget {
  bool isHovering = false;
  AppBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).brightness == Brightness.light
            ? textFillColor
            : Colors.blueAccent,
        child: Row(
          children: [
            const SideNavigation(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: Colors.grey.withOpacity(.3),
                  ),
                ),
              ),
              height: double.infinity,
              width: 350,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey, border: Border.all(width: 1)),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
