import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final int fontSize;

  const QuoteText({
    required this.text,
    required this.fontWeight,
    required this.fontStyle,
    required this.fontSize,
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
          child: SingleChildScrollView(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: fontWeight,
                fontStyle: fontStyle,
                fontSize: fontSize.toDouble()
              ),
            ),
          ),
        ),
      ),
    );
  }
}