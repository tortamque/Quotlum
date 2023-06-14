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
  Quote fetchedQuote = Quote(text: 'Tap or swipe here to create an awesome quote :D', author: 'Developer');

  void _handleAction() {
    setState(() {
      _fetchQuote();
      swapQuotes = !swapQuotes;
    });
  }

  Future<void> _fetchQuote() async {
    fetchedQuote = await QuotesClient.createQuote();
  }

  QuoteCard _buildQuoteCard(Key key){
    final quoteTextStyle = _generateRandomTextStyle();

    return QuoteCard(
      text: fetchedQuote.text,
      author: fetchedQuote.author,
      quoteFontWeight: quoteTextStyle.fontWeight!,
      quoteFontStyle: quoteTextStyle.fontStyle!,
      quoteFontSize: quoteTextStyle.fontSize!.toInt(),
      key: key,
    );
  }

  TextStyle _generateRandomTextStyle() {
    final minFontSize = 22;
    final maxFontSize = 30;
    final fontWeights = [FontWeight.w300, FontWeight.w400, FontWeight.w500, FontWeight.w600, FontWeight.w700];
    final fontStyles = [FontStyle.normal, FontStyle.italic];

    final randomFontWeight = fontWeights[Random().nextInt(fontWeights.length)];
    final randomFontStyle = fontStyles[Random().nextInt(fontStyles.length)];
    final randomFontSize = minFontSize + Random().nextInt(maxFontSize - minFontSize + 1);

    return TextStyle(
      fontWeight: randomFontWeight,
      fontStyle: randomFontStyle,
      fontSize: randomFontSize.toDouble(),
    );
  }

  @override
  void initState() {
    super.initState();
    _fetchQuote();
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
