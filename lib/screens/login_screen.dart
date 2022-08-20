import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    final authService = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Login",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 30),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (String? value) {
                        return (value != null && !value.contains('@'))
                            ? 'You need to enter a valid email address'
                            : null;
                      },
                    ),
                    TextFormField(
                      controller: passwordController,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(labelText: "Password"),
                      obscureText: true,
                      validator: (String? value) {
                        return (value != null && value.length < 6)
                            ? 'Your password need to be atleast 6 chars long'
                            : null;
                      },
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            final isValidForm =
                                formKey.currentState!.validate();

                            if (isValidForm) {
                              await authService.signInWithEmailAndPassword(
                                emailController.text,
                                passwordController.text,
                              );
                            }
                          },
                          child: const Text("Login"),
                        ),
                        const SizedBox(width: 100),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: const Text("Register now")),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
