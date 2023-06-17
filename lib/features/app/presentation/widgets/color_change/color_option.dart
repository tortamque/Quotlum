import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';

class ColorOption extends StatelessWidget {
  final Color mainColor;
  final Color secondaryColor;
  final Color tertiaryColor;

  const ColorOption({
    required this.mainColor,
    required this.secondaryColor,
    required this.tertiaryColor,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: GestureDetector(
        onTap: (){
          BlocProvider.of<ChangeThemeColorBloc>(context).add(
            ChangeThemeColorEvent(
              mainColor: mainColor,
              secondaryColor: secondaryColor,
              tertiaryColor: tertiaryColor
            )
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: mainColor,
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
      )
    );
  }
}