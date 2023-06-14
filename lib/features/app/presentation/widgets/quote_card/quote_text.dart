import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final int fontSize;
  final String fontFamily;

  const QuoteText({
    required this.text,
    required this.fontWeight,
    required this.fontStyle,
    required this.fontSize,
    required this.fontFamily,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: fontWeight,
                fontStyle: fontStyle,
                fontSize: fontSize.toDouble(),
                fontFamily: fontFamily
              ),
            ),
          ),
        ),
      ),
    );
  }
}