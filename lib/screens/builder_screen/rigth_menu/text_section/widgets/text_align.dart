import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:toggle_switch/toggle_switch.dart';

// ignore: must_be_immutable
class AlignWidget extends StatelessWidget {
  AlignWidget({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  final ItemProvider chanageState;
  int? indexCount;
  VoidCallback notifyListener = () {};

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: chanageState.isActive == false ? .2 : 1,
      child: SizedBox(
        height: 30,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: 90,
              child: CustomText(
                text: 'Align',
              ),
            ),
            const Spacer(),
            ToggleSwitch(
              minWidth: 40.0,
              minHeight: 15.0,
              cornerRadius: 6.0,
              activeFgColor: primaryAccentColor,
              initialLabelIndex: chanageState.indexCount,
              inactiveBgColor: Theme.of(context).brightness == Brightness.light
                  ? builderBackground
                  : darkFieldBgGrey,
              inactiveFgColor: darkIsActiveGrey,
              totalSwitches: 3,
              icons: const [
                Icons.format_align_left,
                Icons.format_align_center,
                Icons.format_align_right,
              ],
              iconSize: 14.0,
              borderWidth: 3.0,
              borderColor: [
                Theme.of(context).brightness == Brightness.light
                    ? builderBackground
                    : darkFieldBgGrey,
              ],
              activeBgColors: [
                [
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.white
                      : darkIsActiveGrey
                ],
                [
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.white
                      : darkIsActiveGrey
                ],
                [
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.white
                      : darkIsActiveGrey
                ]
              ],
              onToggle: (index) {
                switch (index) {
                  case 0:
                    {
                      chanageState.textAlignLeft();
                    }
                    break;
                  case 1:
                    {
                      chanageState.textAlignCenter();
                    }
                    break;
                  case 2:
                    {
                      chanageState.textAlignRigth();
                    }
                    break;
                  //etc.
                }
              },
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
