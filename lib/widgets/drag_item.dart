import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';

class DragItemWidget extends StatelessWidget {
  final String heading;
  final VoidCallback? onTap;
  final Widget? body;

  const DragItemWidget({
    Key? key,
    required this.heading,
    this.onTap,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: heading,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: Theme.of(context).brightness == Brightness.light
                  ? null
                  : Border.all(width: .5),
              color: Theme.of(context).brightness == Brightness.light
                  ? mediumGrey
                  : darkBuilderBackground,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Stack(
                children: [
                  Container(
                    height: 77,
                    decoration: BoxDecoration(
                      border: Theme.of(context).brightness == Brightness.light
                          ? null
                          : Border.all(width: .5),
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.white
                          : darkMenuBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: body,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
