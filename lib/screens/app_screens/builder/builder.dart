import 'package:flutter/material.dart';
import 'package:funnel/screens/app_screens/builder/funnel_render.dart';
import 'package:funnel/widgets/custom_app_bar.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/screens/app_screens/builder/side_menu_item.dart';
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
            ? builderBackground
            : Colors.blueAccent,
        child: Row(
          children: [
            const SideNavigation(),
            const SideItemMenu(),
            Expanded(
              flex: 6,
              child: ListView(
                primary: false,
                children: [
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FunnelRender(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
