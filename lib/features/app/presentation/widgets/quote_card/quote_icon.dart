import 'package:flutter/material.dart';

class QuoteIcon extends StatelessWidget {
  const QuoteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Image.asset(
          "assets/icons/quote.png",
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}