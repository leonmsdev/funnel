import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controllerType;
  bool obscureText;
  final String lableText;
  String? Function(String?)? validator;

  LoginTextField(
      {Key? key,
      required this.controllerType,
      required this.lableText,
      this.obscureText = false,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: '$lableText:',
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
            controller: controllerType,
            obscureText: obscureText,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                focusColor: primaryAccentColor,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: lableText,
                labelStyle: const TextStyle(
                  color: Color(0xFF9BA3AB),
                  fontSize: 15,
                ),
                filled: true,
                fillColor: textFillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                )),
            validator: validator),
      ],
    );
  }
}
