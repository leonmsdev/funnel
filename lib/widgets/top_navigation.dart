import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  // ignore: use_key_in_widget_constructors
  const TopNavigation({
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : darkMenuBackground,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.withOpacity(.3),
          ),
        ),
      ),
      height: preferredSize.height,
      alignment: Alignment.center,
      child: Row(
        children: const [],
      ),
    );
  }
}
