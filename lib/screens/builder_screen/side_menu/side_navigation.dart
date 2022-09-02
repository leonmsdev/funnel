import 'package:flutter/material.dart';
import 'package:funnel/providers/side_navigation_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/settings.dart';
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
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : darkMenuBackground,
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
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {
                sideNavigation.changeSideNavigationState();
              },
              icon: HeroIcon(
                sideNavigation.currentTheme == true
                    ? HeroIcons.arrowNarrowRight
                    : HeroIcons.arrowNarrowLeft,
                size: 20,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const HeroIcon(HeroIcons.home),
            ),
            const Spacer(),
            InkWell(
              onTap: () async {
                showDialog(
                    context: context,
                    builder: (_) {
                      // ignore: todo
                      //TODO AlertDialog mit Settings zu einem Widget umbauen.
                      return AlertDialog(
                        contentPadding: const EdgeInsets.all(0),
                        insetPadding: const EdgeInsets.symmetric(horizontal: 0),
                        backgroundColor:
                            Theme.of(context).brightness == Brightness.light
                                ? Colors.white
                                : darkMenuBackground,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        title: const Settings(),
                      );
                    }).then((exit) {
                  if (exit == null) return;

                  if (exit) {
                    // user pressed Yes button
                  } else {
                    // user pressed No button
                  }
                });
              },
              child: HeroIcon(
                HeroIcons.cog,
                size: 20,
                color: Colors.grey.withOpacity(.8),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      );
    });
  }
}
