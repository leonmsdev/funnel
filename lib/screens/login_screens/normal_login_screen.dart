import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:funnel/controllers/screen_controller.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/color_text_button.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:funnel/widgets/login_text_field.dart';
import 'package:funnel/widgets/logo_button.dart';
import 'package:funnel/widgets/reset_password.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalLoginScreen extends StatelessWidget {
  const NormalLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    final authService = Provider.of<AuthProvider>(context);
    String errorMessage = '';

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("lib/styles/images/office.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: greyAccentColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: SizedBox(
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Login in to",
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                          Text(
                            " Magics.",
                            style: GoogleFonts.pacifico(
                              fontSize: 38,
                              fontWeight: FontWeight.w500,
                              color: primaryAccentColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      LogoButton(
                        logo: 'lib/styles/images/google_logo.png',
                        text: 'Mit Google anmelden',
                        onTap: () {},
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              width: 100,
                              color: const Color(0xFFC9D3DD),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: CustomText(
                              text: 'oder via',
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              width: 100,
                              color: const Color(0xFFC9D3DD),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LoginTextField(
                                heading: 'Email',
                                controllerType: emailController,
                                lableText: 'E-Mail',
                                obscureText: false,
                                validator: validateEmail),
                            const SizedBox(height: 25),
                            LoginTextField(
                                heading: 'Passwort',
                                controllerType: passwordController,
                                lableText:
                                    'Dein Passwort muss mindestens 8 Zeichen lang sein.',
                                obscureText: true,
                                validator: validatePassword),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Spacer(),
                                InkWell(
                                  onTap: () async {
                                    showDialog(
                                        context: context,
                                        builder: (_) {
                                          // ignore: todo
                                          //TODO AlertDialog mit ResetPassword zu einem Widget umbauen.
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20.0))),
                                            title: ResetPassword(),
                                          );
                                        }).then((exit) {
                                      if (exit == null) return;

                                      if (exit) {
                                        // user pressed Yes button
                                      } else {
                                        // user pressed No button
                                      }
                                    });
                                  },
                                  child: CustomText(
                                    text: "Passwort vergessen?",
                                    fontSize: 12,
                                    color: primaryAccentColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 40),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Center(
                                  child: CustomText(
                                    text: errorMessage,
                                  ),
                                ),
                                ColorTextButton(
                                  fontSize: 16,
                                  title: 'Log in',
                                  onTap: () async {
                                    final isValidForm =
                                        formKey.currentState!.validate();

                                    if (isValidForm) {
                                      try {
                                        await authService
                                            .signInWithEmailAndPassword(
                                          emailController.text,
                                          passwordController.text,
                                        );
                                        errorMessage = '';
                                      } on FirebaseAuthException catch (error) {
                                        errorMessage = error.message!;
                                      }
                                    }
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                CustomText(text: 'Du hast noch kein Konto?'),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    if (ScreenController.isLargeScreen(
                                            context) ||
                                        ScreenController.isMediumScreen(
                                                context) ==
                                            true) {
                                      Navigator.pushNamed(
                                          context, '/normal_register');
                                    } else {
                                      Navigator.pushNamed(
                                          context, '/small_register');
                                    }
                                  },
                                  child: CustomText(
                                    text: "Registrieren",
                                    fontSize: 12,
                                    color: primaryAccentColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Center(
                              child: InkWell(
                                onTap: () {},
                                child: CustomText(
                                  text: '© 2022 All Rights Reserved',
                                  color: const Color(0xFFB4BEC7),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return 'Bitte gebe eine E-Mail an.';
  }

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) {
    return 'Bitte geben sie eine korrekte E-Mail Adresse an.';
  }
  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return 'Bitte geben sie ein Password an.';
  }
  String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword)) {
    return '''
Ihr Passwort muss mindestens 8 Zeichen lang sein,
und ein Großbuchstaben sowie eine Zahl beinhalten.
''';
  }
  return null;
}
