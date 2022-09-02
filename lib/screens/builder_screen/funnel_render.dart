import 'package:flutter/material.dart';
import 'package:funnel/screens/builder_screen/side_menu/widgets/heading_item.dart';

class FunnelRender extends StatelessWidget {
  const FunnelRender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.03),
              blurRadius: 25, // soften the shadow
              spreadRadius: 5, //extend the shadow
              offset: const Offset(
                0, // Move to right 10  horizontally
                3, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            children: [
              HeadingItem(),
            ],
          ),
        ),
      ),
    );
  }
}
