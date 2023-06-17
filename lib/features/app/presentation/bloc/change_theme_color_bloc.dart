import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';

class ChangeThemeColorBloc extends Bloc<ChangeThemeColorEvent, Color>{
  ChangeThemeColorBloc() : super(CustomColors.mainColor){
    on<ChangeThemeColorEvent>(_onChangeThemeColor);
  }

  _onChangeThemeColor(ChangeThemeColorEvent event, Emitter<Color> emit){
    CustomColors.mainColor = event.newColor;
    emit(event.newColor);
  }
}

class ChangeThemeColorEvent {
  final Color newColor;

  ChangeThemeColorEvent(this.newColor);
}