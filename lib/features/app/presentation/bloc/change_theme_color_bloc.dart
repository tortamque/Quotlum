import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';

class ChangeThemeColorBloc extends Bloc<ChangeThemeColorEvent, Color>{
  ChangeThemeColorBloc() : super(CustomColors.mainColor){
    on<ChangeThemeColorEvent>(_onChangeThemeColor);
  }

  _onChangeThemeColor(ChangeThemeColorEvent event, Emitter<Color> emit){
    CustomColors.mainColor = event.mainColor;
    CustomColors.secondaryColor = event.secondaryColor;
    CustomColors.tertiaryColor = event.tertiaryColor;

    emit(event.mainColor);
  }
}

class ChangeThemeColorEvent {
  final Color mainColor;
  final Color secondaryColor;
  final Color tertiaryColor;

  ChangeThemeColorEvent({
    required this.mainColor,
    required this.secondaryColor,
    required this.tertiaryColor
  });
}