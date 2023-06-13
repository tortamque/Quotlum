import 'package:flutter/material.dart';

class QuoteAuthor extends StatelessWidget {
  final String author;

  const QuoteAuthor({
    required this.author,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(author),
        ),
      )
    );
  }
}