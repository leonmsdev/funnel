import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/text_section/widgets/text_align.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/text_section/widgets/text_content.dart';
import 'package:funnel/screens/builder_screen/rigth_menu/text_section/widgets/text_weigth.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:heroicons/heroicons.dart';

class TextSection extends StatefulWidget {
  const TextSection({
    Key? key,
    required this.chanageState,
  }) : super(key: key);

  final ItemProvider chanageState;

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          child: ExpansionTile(
            onExpansionChanged: (value) {
              setState(() {});
              isOpen = !isOpen;
            },
            trailing: isOpen == true
                ? const HeroIcon(
                    HeroIcons.minus,
                    size: 14,
                  )
                : const HeroIcon(
                    HeroIcons.plus,
                    size: 14,
                  ),
            initiallyExpanded: isOpen,
            title: CustomText(
              text: 'Text',
              fontSize: 15,
              textAlign: TextAlign.left,
              fontWeight: FontWeight.bold,
            ),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextContent(chanageState: widget.chanageState),
                  const SizedBox(height: 15),
                  AlignWidget(chanageState: widget.chanageState),
                  const SizedBox(height: 15),
                  TextWeigth(chanageState: widget.chanageState)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
