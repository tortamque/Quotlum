import 'package:flutter/material.dart';
import 'package:quotlum/config/theme/colors.dart';

class AppBarTitle extends StatelessWidget {
  final String title;

  const AppBarTitle({
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      style: TextStyle(
        color: CustomColors.appbarContentColor,
        fontSize: 24
      ),
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 500),
      child: Text(
        title,
      ),
    );
  }
}