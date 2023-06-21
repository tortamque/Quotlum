import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';
import 'package:quotlum/features/app/data/repository/theme_color_repository.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';

class GetThemeColorBloc extends Bloc<GetThemeColorEvent, void>{
  GetThemeColorBloc() : super(null){
    on<GetThemeColorEvent>(_onGetThemeColor);
  }

  _onGetThemeColor(GetThemeColorEvent event, Emitter<void> emit) async {
    final Color appBackgroundColor = await ThemeColorRepository.getAppBackgroundColor();
    final Color appbarContentColor = await ThemeColorRepository.getAppbarContentColor();

    CustomColors.appBackgroundColor = appBackgroundColor;
    CustomColors.appbarContentColor = appbarContentColor;

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