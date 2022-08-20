import 'package:flutter/material.dart';
import 'package:funnel/controllers/screen_controller.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/layout/app_layout.dart';
import 'package:funnel/screens/login_screens/small_login_screen.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';
import '../screens/login_screens/normal_login_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthProvider>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active &&
              ScreenController.isLargeScreen(context)) {
            final User? user = snapshot.data;
            return user == null ? const NormalLoginScreen() : AppLayout();
          } else if (snapshot.connectionState == ConnectionState.active &&
              ScreenController.isMediumScreen(context)) {
            final User? user = snapshot.data;
            return user == null ? const NormalLoginScreen() : AppLayout();
          } else if (snapshot.connectionState == ConnectionState.active &&
              ScreenController.isSmallScreen(context)) {
            final User? user = snapshot.data;
            return user == null ? const SmallLoginScreen() : AppLayout();
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
