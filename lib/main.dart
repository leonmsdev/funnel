import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:funnel/providers/auth_provider.dart';
import 'package:funnel/firebase_options.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:funnel/providers/side_navigation_provider.dart';
import 'package:funnel/screens/app_screens/builder/builder.dart';
import 'package:funnel/screens/login_screens/normal_login_screen.dart';
import 'package:funnel/screens/login_screens/small_login_screen.dart';
import 'package:funnel/screens/login_screens/small_register_screen.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/wrapper.dart';
import 'package:provider/provider.dart';
import 'screens/login_screens/normal_register_screen.dart';

bool isDarkMode = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider()..initialize(),
        ),
        Provider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SideNavigationProvider(),
        ),
      ],
      child: const Master(),
    );
  }
}

class Master extends StatelessWidget {
  const Master({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.light().copyWith(
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(seedColor: primaryAccentColor),
          ),
          darkTheme: ThemeData.dark().copyWith(
            brightness: Brightness.dark,
          ),
          themeMode: provider.themeMode,
          initialRoute: '/',
          routes: {
            '/': (context) => const Wrapper(),
            '/normal_login': (context) => const NormalLoginScreen(),
            '/small_login': (context) => const SmallLoginScreen(),
            '/normal_register': (context) => const NormalRegisterScreen(),
            '/small_register': (context) => const SmallRegisterScreen(),
            '/app_builder': (context) => AppBuilder(),
          },
        );
      },
    );
  }
}
