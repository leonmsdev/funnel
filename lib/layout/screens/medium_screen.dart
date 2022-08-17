import 'package:flutter/material.dart';
import 'package:funnel/styles/colors.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: const Center(),
      ),
    );
  }
}
