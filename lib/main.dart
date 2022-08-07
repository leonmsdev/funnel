import 'package:flutter/material.dart';
import 'package:funnel/layout/layout.dart';

void main() {
  runApp(const Master());
}

class Master extends StatelessWidget {
  const Master({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Layout(),
    );
  }
}
