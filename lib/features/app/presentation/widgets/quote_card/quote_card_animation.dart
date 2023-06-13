import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_author.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_card.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_icon.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_text.dart';

class QuoteCardAnimation extends StatefulWidget {
  final String text;
  final String author;

  const QuoteCardAnimation({
    required this.text,
    required this.author,
    Key? key,
  }) : super(key: key);

  @override
  _QuoteCardAnimationState createState() => _QuoteCardAnimationState();
}

class _QuoteCardAnimationState extends State<QuoteCardAnimation> {
  bool showNextQuote = false;

  void _handleSwipeLeft() {
    setState(() {
      showNextQuote = true;
    });
  }

  QuoteCardAnimation _createQuote(){
    return QuoteCardAnimation(
      text: 'Next Quote',
      author: 'Next Author',
      key: ValueKey('next'),
    );
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
        ? _createQuote()
        : QuoteCard(text: widget.text, author: widget.author)
      ),
    );
  }
}
