// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:funnel/layout/layout.dart';
import 'package:funnel/providers/color_theme_provider.dart';
import 'package:provider/provider.dart';

bool isDarkMode = false;

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider()..initialize(),
      child: Master(),
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
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: provider.themeMode,
          home: Layout(),
        );
      },
    );
  }
}
