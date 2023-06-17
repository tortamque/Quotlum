import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';

class ColorOption extends StatefulWidget {
  final Color appBackgroundColor;
  final Color appbarContentColor;
  final Color cardBackgroundColor;


  const ColorOption({
    required this.appBackgroundColor,
    required this.appbarContentColor,
    required this.cardBackgroundColor,
    super.key
  });

  @override
  State<ColorOption> createState() => _ColorOptionState();
}

class _ColorOptionState extends State<ColorOption> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic, 
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: RotationTransition(
        turns: _animation,
        child: GestureDetector(
          onTap: (){
            _controller.reset();
            _controller.forward();
            BlocProvider.of<ChangeThemeColorBloc>(context).add(
              ChangeThemeColorEvent(
                appBackgroundColor: widget.appBackgroundColor,
                appbarContentColor: widget.appbarContentColor,
                cardBackgroundColor: widget.cardBackgroundColor
              )
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: widget.appBackgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  offset: Offset(4, 4),
                  blurRadius: 5,
                  spreadRadius: 0,
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}