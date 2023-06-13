import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {
  final String text;

  const QuoteText({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.center,
          child: Text(text),
        ),
      ),
    );
  }
}