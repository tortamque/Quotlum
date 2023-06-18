import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';

class ChangeThemeColorBloc extends Bloc<ChangeThemeColorEvent, ColorState>{
  ChangeThemeColorBloc() : super(
    ColorState(previous: CustomColors.appbarContentColor, current: CustomColors.appbarContentColor)
  ){
    on<ChangeThemeColorEvent>(_onChangeThemeColor);
  }

  _onChangeThemeColor(ChangeThemeColorEvent event, Emitter<ColorState> emit){
    Color previous = CustomColors.appbarContentColor;
    Color current = event.appbarContentColor;

    CustomColors.appBackgroundColor = event.appBackgroundColor;
    CustomColors.appbarContentColor = event.appbarContentColor;

    emit(ColorState(previous: previous, current: current));
  }
}

class ChangeThemeColorEvent {
  final Color appBackgroundColor;
  final Color appbarContentColor;

  ChangeThemeColorEvent({
    required this.appBackgroundColor,
    required this.appbarContentColor,
  });
}

class ColorState{
  final Color previous;
  final Color current;

  const ColorState({
    required this.previous,
    required this.current
  });
}
