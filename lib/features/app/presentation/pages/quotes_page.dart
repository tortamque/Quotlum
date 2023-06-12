import 'package:flutter/material.dart';
import 'package:quotlum/features/app/widgets/quote_card/quote_card.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key, required this.title});
  final String title;

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: QuoteCard(
        text: "Doing what you love is the cornerstone of having abundance in your life.",
        author: "Wayne Dyer",
      )
    );
  }
}
