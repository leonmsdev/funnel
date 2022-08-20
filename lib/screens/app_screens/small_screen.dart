import 'package:flutter/material.dart';
import '../../../styles/colors.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

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
