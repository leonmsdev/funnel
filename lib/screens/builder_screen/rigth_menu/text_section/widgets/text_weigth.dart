import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/text_section/widgets/text_weigth_drop_down.dart';
import 'package:funnel/widgets/custom_text.dart';

// ignore: must_be_immutable
class TextWeigth extends StatelessWidget {
  TextWeigth({
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
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: 90,
              child: CustomText(
                text: 'Weigth',
              ),
            ),
            const TextWeigthDropDown(),
          ],
        ),
      ),
    );
  }
}
