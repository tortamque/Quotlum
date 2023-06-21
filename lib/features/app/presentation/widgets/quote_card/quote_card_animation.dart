import 'package:flutter/material.dart';
import 'dart:math';
import 'package:quotlum/features/app/data/data_sources/remote/quotes_client.dart';
import 'package:quotlum/features/app/domain/entities/classes/quote.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_card.dart';

class QuoteCardAnimation extends StatefulWidget {
  @override
  _QuoteCardAnimationState createState() => _QuoteCardAnimationState();
}

class _QuoteCardAnimationState extends State<QuoteCardAnimation> {
  bool swapQuotes = false;
  Quote fetchedQuote = Quote(text: 'Tap or swipe here to get an awesome quote :D', author: 'Developer');

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
      fontWeight: quoteTextStyle.fontWeight!,
      fontStyle: quoteTextStyle.fontStyle!,
      fontSize: quoteTextStyle.fontSize!.toInt(),
      fontFamily: quoteTextStyle.fontFamily!,
      key: key,
    );
  }

  TextStyle _generateRandomTextStyle() {
    const int minFontSize = 22;
    const int maxFontSize = 30;
    final List fontWeights = [FontWeight.w300, FontWeight.w400, FontWeight.w500, FontWeight.w600, FontWeight.w700];
    final List fontStyles = [FontStyle.normal, FontStyle.italic];
    final List fontFamilies = ["Montserrat", "Nunito", "Poppins", "Raleway", "RobotoMono"];

    final FontWeight randomFontWeight = fontWeights[Random().nextInt(fontWeights.length)];
    final FontStyle randomFontStyle = fontStyles[Random().nextInt(fontStyles.length)];
    final int randomFontSize = minFontSize + Random().nextInt(maxFontSize - minFontSize + 1);
    final String randomFontFamily = fontFamilies[Random().nextInt(fontFamilies.length)];

    return TextStyle(
      fontWeight: randomFontWeight,
      fontStyle: randomFontStyle,
      fontSize: randomFontSize.toDouble(),
      fontFamily: randomFontFamily
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
        switchInCurve: Curves.easeOutQuint,
        switchOutCurve: Curves.easeInQuint,
        duration: const Duration(milliseconds: 750),
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
