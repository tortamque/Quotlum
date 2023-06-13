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
  bool quoteFetched = false;
  Quote? fetchedQuote;

  void _handleSwipeLeft() {
    setState(() {
      showNextQuote = true;
    });
  }

  Future<void> _fetchQuote() async {
    if (!quoteFetched) {
      fetchedQuote = await QuotesClient.createQuote();
      quoteFetched = true;
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) => _handleSwipeLeft(),
      onVerticalDragStart: (details) => _handleSwipeLeft(),
      onTap: () => _handleSwipeLeft(),
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
            ? QuoteCardAnimation(
                quote: fetchedQuote!,
                key: ValueKey('next'),
              )
            : QuoteCard(text: widget.quote.text, author: widget.quote.author),
      ),
    );
  }
}
