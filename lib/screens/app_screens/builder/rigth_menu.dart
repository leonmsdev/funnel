import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

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

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  final ItemProvider chanageState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomText(
          text: 'Text',
          textAlign: TextAlign.left,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 5),
        AlignWidget(chanageState: chanageState),
      ],
    );
  }
}

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
    return Visibility(
      visible: chanageState.isActive,
      child: Container(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              child: CustomText(text: 'Align'),
              width: 80,
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
            Spacer()
          ],
        ),
      ),
    );
  }
}

class AlignVerticalBottom extends StatelessWidget {
  const AlignVerticalBottom({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  final ItemProvider chanageState;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: chanageState.isActive == true
                    ? primaryAccentColor
                    : Theme.of(context).brightness == Brightness.light
                        ? notActiveGrey
                        : darkNotActiveGrey,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 14,
              width: 7,
            ),
            const SizedBox(height: 3),
            Container(
              height: 1,
              width: 16,
              color: chanageState.isActive == true
                  ? primaryAccentColor
                  : Theme.of(context).brightness == Brightness.light
                      ? notActiveGrey
                      : darkNotActiveGrey,
            ),
          ],
        ),
      ),
    );
  }
}

class AlignVerticalCenter extends StatelessWidget {
  const AlignVerticalCenter({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  final ItemProvider chanageState;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 35,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 1,
              width: 16,
              color: chanageState.isActive == true
                  ? primaryAccentColor
                  : Theme.of(context).brightness == Brightness.light
                      ? notActiveGrey
                      : darkNotActiveGrey,
            ),
            const SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                color: chanageState.isActive == true
                    ? primaryAccentColor
                    : Theme.of(context).brightness == Brightness.light
                        ? notActiveGrey
                        : darkNotActiveGrey,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 14,
              width: 7,
            ),
          ],
        ),
      ),
    );
  }
}

class AlignVerticalTop extends StatelessWidget {
  final ItemProvider chanageState;

  const AlignVerticalTop({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: 16,
              color: chanageState.isActive == true
                  ? primaryAccentColor
                  : Theme.of(context).brightness == Brightness.light
                      ? notActiveGrey
                      : darkNotActiveGrey,
            ),
            const SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                color: chanageState.isActive == true
                    ? primaryAccentColor
                    : Theme.of(context).brightness == Brightness.light
                        ? notActiveGrey
                        : darkNotActiveGrey,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 14,
              width: 7,
            ),
          ],
        ),
      ),
    );
  }
}

class AlignHorizontalRigth extends StatelessWidget {
  final ItemProvider chanageState;

  const AlignHorizontalRigth({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 35,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: chanageState.isActive == true
                    ? primaryAccentColor
                    : Theme.of(context).brightness == Brightness.light
                        ? notActiveGrey
                        : darkNotActiveGrey,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 7,
              width: 14,
            ),
            const SizedBox(width: 3),
            Container(
              height: 16,
              width: 1,
              color: chanageState.isActive == true
                  ? primaryAccentColor
                  : Theme.of(context).brightness == Brightness.light
                      ? notActiveGrey
                      : darkNotActiveGrey,
            ),
          ],
        ),
      ),
    );
  }
}

class AlignHorizontalCenter extends StatelessWidget {
  final ItemProvider chanageState;
  const AlignHorizontalCenter({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chanageState = Provider.of<ItemProvider>(context);
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 35,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 16,
              width: 1,
              color: chanageState.isActive == true
                  ? primaryAccentColor
                  : Theme.of(context).brightness == Brightness.light
                      ? notActiveGrey
                      : darkNotActiveGrey,
            ),
            const SizedBox(width: 3),
            Container(
              decoration: BoxDecoration(
                color: chanageState.isActive == true
                    ? primaryAccentColor
                    : Theme.of(context).brightness == Brightness.light
                        ? notActiveGrey
                        : darkNotActiveGrey,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 7,
              width: 14,
            ),
          ],
        ),
      ),
    );
  }
}

class AlignHorizontalLeft extends StatelessWidget {
  final ItemProvider chanageState;
  const AlignHorizontalLeft({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chanageState = Provider.of<ItemProvider>(context);
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 35,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 16,
              width: 1,
              color: chanageState.isActive == true
                  ? primaryAccentColor
                  : Theme.of(context).brightness == Brightness.light
                      ? notActiveGrey
                      : darkNotActiveGrey,
            ),
            const SizedBox(width: 3),
            Container(
              decoration: BoxDecoration(
                color: chanageState.isActive == true
                    ? primaryAccentColor
                    : Theme.of(context).brightness == Brightness.light
                        ? notActiveGrey
                        : darkNotActiveGrey,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 7,
              width: 14,
            ),
          ],
        ),
      ),
    );
  }
}
