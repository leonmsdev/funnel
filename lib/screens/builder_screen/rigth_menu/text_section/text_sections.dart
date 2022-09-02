import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/text_section/widgets/text_align.dart';
import 'package:funnel/widgets/custom_text.dart';

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
        const SizedBox(height: 5),
        AlignWidget(chanageState: chanageState),
      ],
    );
  }
}
