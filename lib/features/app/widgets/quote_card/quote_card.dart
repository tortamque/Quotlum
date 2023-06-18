import 'package:flutter/material.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_author.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_icon.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_text.dart';

class QuoteCard extends StatelessWidget {
  final String text;
  final String author;

  const QuoteCard({
    required this.text,
    required this.author,
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
          QuoteIcon(),
          QuoteText(text: text),
          QuoteAuthor(author: author)
        ],
      ),
    );
  }
}