import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:funnel/widgets/drag_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : darkMenuBackground,
          border: Border(
            right: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(.2),
            ),
          ),
        ),
        child: GridView.count(
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            DragItemWidget(
              onTap: () {},
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 12,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 12,
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 12,
                    width: 70,
                  ),
                  const SizedBox(height: 9),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 12,
                    width: 90,
                  ),
                  const SizedBox(height: 9),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
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
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? mediumGrey
                                  : darkIconBackground,
                              borderRadius: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? null
                                  : BorderRadius.circular(3),
                            ),
                            height: 12,
                            width: 46,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? mediumGrey
                                  : darkIconBackground,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            height: 12,
                            width: 44,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? mediumGrey
                                  : darkIconBackground,
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 12,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 12,
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
                        color: primaryAccentColor.withOpacity(.20),
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? mediumGrey
                          : darkIconBackground,
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
