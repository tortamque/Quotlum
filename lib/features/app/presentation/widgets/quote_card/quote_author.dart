import 'package:flutter/material.dart';

class QuoteAuthor extends StatelessWidget {
  final String author;
  final FontWeight fontWeight;
  final String fontFamily;

  const QuoteAuthor({
    required this.author,
    required this.fontWeight,
    required this.fontFamily,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            author,
            style: TextStyle(
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              fontStyle: FontStyle.italic,
              fontSize: 16
            ),
          ),
        ),
      )
    );
  }
}