import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';

class SideItemMenu extends StatelessWidget {
  const SideItemMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(.2),
            ),
          ),
        ),
        child: GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: [
            DragItemWidget(
              heading: 'Heading',
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Welcome',
                    fontWeight: FontWeight.bold,
                    color: primaryAccentColor,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                  ),
                ],
              ),
            ),
            DragItemWidget(
              heading: 'Paragraph',
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                    width: 70,
                  ),
                  const SizedBox(height: 9),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                    width: 90,
                  ),
                  const SizedBox(height: 9),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                    width: 45,
                  ),
                ],
              ),
            ),
            DragItemWidget(
              heading: 'Button',
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: mediumGrey,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            height: 13,
                            width: 48,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: mediumGrey,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            height: 13,
                            width: 48,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: mediumGrey,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        height: 34,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryAccentColor,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: CustomText(
                          text: '- - - - -',
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DragItemWidget(
              heading: 'Link',
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    text: 'Link',
                    underline: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    color: primaryAccentColor,
                  ),
                ],
              ),
            ),
            DragItemWidget(
              heading: 'Image',
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryAccentColor.withOpacity(.15),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      height: 13,
                      width: double.infinity,
                      child: Icon(
                        Icons.image,
                        size: 20,
                        color: primaryAccentColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 13,
                  ),
                ],
              ),
            ),
          ],
          // Generate 100 widgets that display their index in the List.
        ),
      ),
    );
  }
}

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
              color: blueGreyColor,
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
                      color: Colors.white,
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
