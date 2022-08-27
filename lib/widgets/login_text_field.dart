import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:heroicons/heroicons.dart';

// ignore: must_be_immutable
class LoginTextField extends StatefulWidget {
  final TextEditingController controllerType;
  bool obscureText = false;
  final String lableText;
  final String heading;
  String? Function(String?)? validator;

  LoginTextField({
    Key? key,
    required this.controllerType,
    required this.lableText,
    this.obscureText = false,
    this.validator,
    required this.heading,
  }) : super(key: key);

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  HeroIcons currentIcon = HeroIcons.eye;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: '${widget.heading}:',
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
            controller: widget.controllerType,
            obscureText: widget.obscureText,
            cursorColor: primaryAccentColor,
            decoration: InputDecoration(
                suffixIcon: widget.heading.contains("Passwort")
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                if (widget.obscureText == true) {
                                  currentIcon = HeroIcons.eyeOff;
                                  widget.obscureText = !widget.obscureText;
                                } else {
                                  currentIcon = HeroIcons.eye;
                                  widget.obscureText = !widget.obscureText;
                                }
                              });
                            },
                            child: HeroIcon(
                              currentIcon,
                              size: 2,
                            )),
                      )
                    : null,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: widget.lableText,
                labelStyle: const TextStyle(
                  color: Color(0xFF9BA3AB),
                  fontSize: 13,
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
            validator: widget.validator),
      ],
    );
  }
}
