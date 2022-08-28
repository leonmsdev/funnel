import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  // ignore: use_key_in_widget_constructors
  const CustomAppBar({
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const HeroIcon(HeroIcons.home),
          ),
        ],
      ),
    );
  }
}
