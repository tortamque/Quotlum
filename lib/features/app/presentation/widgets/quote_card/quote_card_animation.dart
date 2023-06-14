import 'package:flutter/material.dart';
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
  bool showNextQuote = false;
  Quote fetchedQuote = Quote(text: 'Loading...\nPretend you don\'t see this text', author: ':D');

  void _handleAction() {
    setState(() {
      _fetchQuote();
      showNextQuote = !showNextQuote;
    });
  }

  Future<void> _fetchQuote() async {
    fetchedQuote = await QuotesClient.createQuote();
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
        child: showNextQuote
            ? QuoteCard(text: fetchedQuote.text, author: fetchedQuote.author, key: ValueKey('next'),)
            : QuoteCard(text: fetchedQuote.text, author: fetchedQuote.author, key: ValueKey('prev'),)
      ),
    );
  }
}
