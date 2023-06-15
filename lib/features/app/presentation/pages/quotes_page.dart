import 'package:flutter/material.dart';
import 'package:quotlum/features/app/domain/entities/classes/quote.dart';
import 'package:quotlum/features/app/presentation/widgets/background/background.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_card_animation.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_card_animation_style.dart';

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
      body: Stack(
        children: [
          const Background(),
          QuoteCardAnimationStyle(
            card: QuoteCardAnimation(
              quote: Quote(text: "Default quote", author: "Some default author"),
            ),
          ),
        ],
      )
    );
  }
}
