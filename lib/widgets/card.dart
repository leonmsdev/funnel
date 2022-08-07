import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:funnel/controllers/screen_controller.dart';

class WhiteCard extends StatelessWidget {
  const WhiteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Center(
        child: ScreenController.isLargeScreen(context)
            ? Text("large")
            : ScreenController.isMediumScreen(context)
                ? Text("medium")
                : Text("small"),
      ),
    );
  }
}
