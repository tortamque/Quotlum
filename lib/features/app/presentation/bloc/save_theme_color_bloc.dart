import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveThemeColorBloc extends Bloc<SaveThemeColorEvent, void>{
  SaveThemeColorBloc() : super(null){
    on<SaveThemeColorEvent>(_onSaveThemeColor);
  }

  _onSaveThemeColor(SaveThemeColorEvent event, Emitter<void> emit) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    
    await prefs.setInt('appBackgroundColor', CustomColors.appBackgroundColor.value);
    await prefs.setInt('appbarContentColor', CustomColors.appbarContentColor.value);
  } 
}

class SaveThemeColorEvent {}

