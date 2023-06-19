import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetThemeColorBloc extends Bloc<GetThemeColorEvent, void>{
  GetThemeColorBloc() : super(null){
    on<GetThemeColorEvent>(_onGetThemeColor);
  }

  _onGetThemeColor(GetThemeColorEvent event, Emitter<void> emit) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final int appBackgroundColor = prefs.getInt('appBackgroundColor') ?? CustomColors.appBackgroundColor.value;
    final int appbarContentColor = prefs.getInt('appbarContentColor') ?? CustomColors.appbarContentColor.value;

    CustomColors.appBackgroundColor = Color(appBackgroundColor);
    CustomColors.appbarContentColor = Color(appbarContentColor);

    Future.delayed(const Duration(seconds: 1)).then((value){
      BlocProvider.of<ChangeThemeColorBloc>(event.context).add(
        ChangeThemeColorEvent(
          appBackgroundColor: CustomColors.appBackgroundColor,
          appbarContentColor: CustomColors.appbarContentColor,
        )
      );
    });
  }
}

class GetThemeColorEvent{
  final BuildContext context;

  GetThemeColorEvent({
    required this.context
  });
}