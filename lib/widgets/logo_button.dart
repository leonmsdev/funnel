import 'package:flutter/material.dart';
import 'package:funnel/widgets/custom_text.dart';

class LogoButton extends StatelessWidget {
  final String logo;
  final VoidCallback onTap;
  final String text;
  const LogoButton(
      {Key? key, required this.logo, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(logo),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            const SizedBox(width: 10),
            CustomText(
              text: text,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
