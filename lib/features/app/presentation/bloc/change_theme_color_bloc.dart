import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';

class ChangeThemeColorBloc extends Bloc<ChangeThemeColorEvent, Color>{
  ChangeThemeColorBloc() : super(CustomColors.appBackgroundColor){
    on<ChangeThemeColorEvent>(_onChangeThemeColor);
  }

  _onChangeThemeColor(ChangeThemeColorEvent event, Emitter<Color> emit){
    CustomColors.appBackgroundColor = event.appBackgroundColor;
    CustomColors.appbarContentColor = event.appbarContentColor;

    emit(event.appBackgroundColor);
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