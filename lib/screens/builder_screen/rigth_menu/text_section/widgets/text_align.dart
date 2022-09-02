import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 20),
            SizedBox(
              width: 80,
              child: CustomText(text: 'Align'),
            ),
            ToggleSwitch(
              minWidth: 39.0,
              minHeight: 20.0,
              cornerRadius: 6.0,
              activeFgColor: Colors.white,
              initialLabelIndex: chanageState.indexCount,
              inactiveBgColor: darkFieldBgGrey,
              inactiveFgColor: notActiveGrey,
              totalSwitches: 3,
              icons: const [
                Icons.arrow_back_rounded,
                Icons.arrow_upward,
                Icons.arrow_forward_rounded,
              ],
              iconSize: 25.0,
              borderWidth: 3.0,
              borderColor: [darkFieldBgGrey],
              activeBgColors: [
                [darkIsActiveGrey],
                [darkIsActiveGrey],
                [darkIsActiveGrey]
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
