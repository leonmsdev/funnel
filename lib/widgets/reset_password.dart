import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/widgets/color_text_button.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:funnel/widgets/login_text_field.dart';
import 'package:provider/provider.dart';

class ResetPassword extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  ResetPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthProvider>(context);
    final emailController = TextEditingController();
    return Container(
      padding: const EdgeInsets.only(bottom: 15, top: 28, left: 20, right: 20),
      width: 400,
      height: 253,
      child: Column(
        children: [
          CustomText(
            text: 'Reset your password',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          const SizedBox(height: 27),
          Form(
            key: formKey,
            child: Column(
              children: [
                LoginTextField(
                  controllerType: emailController,
                  lableText: 'E-Mail',
                  validator: (String? value) {
                    return (value != null && !value.contains('@'))
                        ? 'You need to enter a valid email address'
                        : null;
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  child: ColorTextButton(
                      onTap: () {
                        final isValidForm = formKey.currentState!.validate();

                        if (isValidForm) {
                          authService
                              .resetPassword(emailController.text.trim());
                        }
                      },
                      title: 'Send password reset'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
