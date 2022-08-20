import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final TextEditingController emailController;
  final bool obscureText = false;
  final String? lableText;

  const FormTextField({
    Key? key,
    required this.emailController,
    required this.lableText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailController,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(labelText: lableText),
      obscureText: obscureText,
    );
  }
}
