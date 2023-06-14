import 'package:flutter/material.dart';
import 'dart:math';
import 'package:quotlum/features/app/data/data_sources/remote/quotes_client.dart';
import 'package:quotlum/features/app/domain/entities/classes/quote.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_card.dart';

class QuoteCardAnimation extends StatefulWidget {
  final Quote quote;

  const QuoteCardAnimation({
    required this.quote,
    super.key,
  });

  @override
  _QuoteCardAnimationState createState() => _QuoteCardAnimationState();
}

class _QuoteCardAnimationState extends State<QuoteCardAnimation> {
  bool swapQuotes = false;
  Quote fetchedQuote = Quote(text: 'Loading...\nPretend you don\'t see this text', author: ':D');

  void _handleAction() {
    setState(() {
      _fetchQuote().then((_) {
        setState(() {
          fetchedQuote = fetchedQuote;
        });
      });
      swapQuotes = !swapQuotes;
    });
  }

  Future<void> _fetchQuote() async {
    fetchedQuote = await QuotesClient.createQuote();
  }

  QuoteCard _buildQuoteCard(Key key){
    List fontWeights = [FontWeight.w400, FontWeight.w500, FontWeight.w600];

    FontWeight randomFontWeight = fontWeights[Random().nextInt(fontWeights.length)];

    return QuoteCard(text: fetchedQuote.text, author: fetchedQuote.author, quoteFontWeight: randomFontWeight, key: key);
  }

  @override
  void initState() {
    super.initState();
    _fetchQuote().then((_) {
      setState(() {
        fetchedQuote = fetchedQuote;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) => _handleAction(),
      onVerticalDragEnd: (details) => _handleAction(),
      onTap: () => _handleAction(),
      child: AnimatedSwitcher(
        switchInCurve: Curves.easeInQuad,
        switchOutCurve: Curves.easeInQuad,
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        child: swapQuotes
            ? _buildQuoteCard(const ValueKey('next'))
            : _buildQuoteCard(const ValueKey('previous'))
      ),
    );
  }
}
