import 'package:flutter/material.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_author.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_icon.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_text.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
      width: MediaQuery.of(context).size.width / 1.25,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(
        children: [
          QuoteIcon(),
          QuoteText(text: "Doing what you love is the cornerstone of having abundance in your life."),
          QuoteAuthor(author: "Wayne Dyer")
        ],
      ),
    );
  }
}
