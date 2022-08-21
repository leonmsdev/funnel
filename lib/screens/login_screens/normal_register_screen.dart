import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:funnel/widgets/login_text_field.dart';

import 'package:provider/provider.dart';

class NormalRegisterScreen extends StatelessWidget {
  const NormalRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

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
                text: "Register",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 30),
              LoginTextField(
                controllerType: emailController,
                lableText: 'Email',
              ),
              LoginTextField(
                controllerType: passwordController,
                lableText: 'Email',
                obscureText: true,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  await authService.createUserWithEmailAndPassword(
                    emailController.text,
                    passwordController.text,
                  );
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, '/');
                },
                child: const Text("Register"),
              ),
              const SizedBox(height: 30),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
