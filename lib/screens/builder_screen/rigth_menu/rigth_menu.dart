// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/align_items.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/text_section/text_sections.dart';
import 'package:funnel/styles/colors.dart';
import 'package:provider/provider.dart';

class RigthMenu extends StatelessWidget {
  const RigthMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chanageState = Provider.of<ItemProvider>(context);
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : darkMenuBackground,
          border: Border(
            left: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(.3),
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AlignHorizontalLeft(chanageState: chanageState),
                  AlignHorizontalCenter(chanageState: chanageState),
                  AlignHorizontalRigth(chanageState: chanageState),
                  AlignVerticalTop(chanageState: chanageState),
                  AlignVerticalCenter(chanageState: chanageState),
                  AlignVerticalBottom(chanageState: chanageState),
                ],
              ),
            ),
            const Divider(
              indent: 0,
              height: 0,
            ),
            const SizedBox(height: 20),
            TextSection(chanageState: chanageState)
          ],
        ),
      ),
    );
  }
}
