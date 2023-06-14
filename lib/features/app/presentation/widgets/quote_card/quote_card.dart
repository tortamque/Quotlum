import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_author.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_icon.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_text.dart';

class QuoteCard extends StatelessWidget {
  final String text;
  final String author;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final int fontSize;
  final String fontFamily;

  const QuoteCard({
    required this.text,
    required this.author,
    required this.fontWeight,
    required this.fontStyle,
    required this.fontSize,
    required this.fontFamily,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
      width: MediaQuery.of(context).size.width / 1.25,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(
        children: [
          const QuoteIcon(),
          QuoteText(text: text, fontWeight: fontWeight, fontStyle: fontStyle, fontSize: fontSize, fontFamily: fontFamily),
          QuoteAuthor(author: author, fontWeight: fontWeight, fontFamily: fontFamily)
        ],
      ),
    );
  }
}
