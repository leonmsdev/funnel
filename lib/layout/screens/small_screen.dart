import 'package:flutter/material.dart';
import 'package:funnel/main.dart';

import '../../styles/colors.dart';
import '../../widgets/card.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: Center(
          child: HeadingCard(
            isDark: isDarkMode,
          ),
        ),
      ),
    );
  }
}
