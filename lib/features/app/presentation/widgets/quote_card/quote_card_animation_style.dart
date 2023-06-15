import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/widgets/quote_card/quote_card_animation.dart';

class QuoteCardAnimationStyle extends StatelessWidget {
  final QuoteCardAnimation card;

  const QuoteCardAnimationStyle({
    required this.card,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: card,
      ),
    );
  }
}