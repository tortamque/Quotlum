import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';
import 'package:quotlum/features/app/data/repository/theme_color_repository.dart';

class SaveThemeColorBloc extends Bloc<SaveThemeColorEvent, void>{
  SaveThemeColorBloc() : super(null){
    on<SaveThemeColorEvent>(_onSaveThemeColor);
  }

  _onSaveThemeColor(SaveThemeColorEvent event, Emitter<void> emit) async {
    ThemeColorRepository.saveColor("appBackgroundColor", CustomColors.appBackgroundColor);
    ThemeColorRepository.saveColor("appbarContentColor", CustomColors.appbarContentColor);
  } 
}

class SaveThemeColorEvent {}

