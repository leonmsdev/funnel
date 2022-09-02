import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:provider/provider.dart';

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
