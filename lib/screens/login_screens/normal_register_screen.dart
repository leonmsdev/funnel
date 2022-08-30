import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/widgets/color_text_button.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:funnel/widgets/login_text_field.dart';
import 'package:funnel/widgets/logo_button.dart';
import 'package:heroicons/heroicons.dart';

import 'package:provider/provider.dart';

class NormalRegisterScreen extends StatefulWidget {
  const NormalRegisterScreen({Key? key}) : super(key: key);

  @override
  State<NormalRegisterScreen> createState() => _NormalRegisterScreenState();
}

class _NormalRegisterScreenState extends State<NormalRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordValidator = TextEditingController();
    final authService = Provider.of<AuthProvider>(context);
    final formKey = GlobalKey<FormState>();
    String errorMessage = '';

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Registrieren",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30),
                LogoButton(
                  logo: 'lib/styles/images/google_logo.png',
                  text: 'Mit Google registrieren',
                  onTap: () {},
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      height: 1,
                      width: 100,
                      color: const Color(0xFFC9D3DD),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: CustomText(
                        text: 'oder via',
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 100,
                      color: const Color(0xFFC9D3DD),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                LoginTextField(
                  heading: 'Email',
                  controllerType: emailController,
                  lableText: 'E-Mail',
                  obscureText: false,
                  validator: (String? value) {
                    return (value != null && !value.contains('@'))
                        ? 'Deine Email ist ungültig.'
                        : null;
                  },
                ),
                const SizedBox(height: 25),
                LoginTextField(
                  heading: 'Passwort',
                  controllerType: passwordController,
                  lableText:
                      'Dein Passwort muss mindestens 8 Zeichen lang sein.',
                  obscureText: true,
                  validator: (String? value) {
                    return (value != null && value.length < 8)
                        ? 'Dein Passwort muss mindestens 8 Zeichen lang sein.'
                        : null;
                  },
                ),
                const SizedBox(height: 25),
                LoginTextField(
                  heading: 'Bestätige dein Passwort',
                  controllerType: passwordValidator,
                  lableText: 'Bitte geben Sie ihr Passwort erneut ein.',
                  obscureText: true,
                  validator: (String? value) {
                    return (passwordValidator.text == passwordController.text)
                        ? null
                        : 'Dein Passwort stimmt nich überein.';
                  },
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      errorMessage,
                      style: const TextStyle(color: Colors.redAccent),
                    ),
                    ColorTextButton(
                      fontSize: 16,
                      title: 'Register',
                      onTap: () async {
                        final isValidForm = formKey.currentState!.validate();

                        if (isValidForm) {
                          try {
                            await authService.createUserWithEmailAndPassword(
                              emailController.text,
                              passwordController.text,
                            );
                            errorMessage = '';
                          } on FirebaseAuthException catch (error) {
                            setState(() {
                              errorMessage = error.code;
                            });
                          }
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const HeroIcon(
                          HeroIcons.arrowNarrowLeft,
                          size: 15,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        CustomText(
                          text: 'Zurück zum Login',
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
