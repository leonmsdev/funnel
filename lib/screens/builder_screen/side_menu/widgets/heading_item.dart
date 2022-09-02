// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:provider/provider.dart';

class HeadingItem extends StatelessWidget {
  final String text;
  bool isActive;
  HeadingItem({Key? key, this.text = 'Heading', this.isActive = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final chanageState = Provider.of<ItemProvider>(context);
    return Consumer(
      builder: (context, provider, child) {
        return InkWell(
          onTap: () {
            chanageState.changeIsActive();
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: chanageState.isActive == true
                    ? Border.all(width: 1, color: primaryAccentColor)
                    : Border.all(width: 1, color: Colors.red.withOpacity(0))),
            child: Text(
              text,
              textAlign: chanageState.textAlign,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        );
      },
    );
  }
}
