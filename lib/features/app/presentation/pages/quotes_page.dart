import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/features/app/presentation/bloc/get_theme_color_bloc.dart';
import 'package:quotlum/features/app/presentation/widgets/appbar/appbar.dart';
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
  void initState() {
    super.initState();
    
    BlocProvider.of<GetThemeColorBloc>(context).add(GetThemeColorEvent(context: context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
      body: Stack(
        children: [
          const Background(),
          QuoteCardAnimationStyle(
            card: QuoteCardAnimation(),
          ),
        ],
      )
    );
  }
}
