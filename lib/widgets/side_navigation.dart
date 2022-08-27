import 'package:flutter/material.dart';
import 'package:funnel/providers/side_navigation_provider.dart';
import 'package:heroicons/heroicons.dart';
import 'package:provider/provider.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sideNavigation = Provider.of<SideNavigationProvider>(context);

    return Consumer(builder: (context, provider, child) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(.3),
            ),
          ),
        ),
        width: sideNavigation.currentTheme == true ? 60 : 300,
        height: double.infinity,
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  sideNavigation.changeSideNavigationState();
                },
                icon: HeroIcon(sideNavigation.currentTheme == true
                    ? HeroIcons.arrowNarrowRight
                    : HeroIcons.arrowNarrowLeft)),
          ],
        ),
      );
    });
  }
}
