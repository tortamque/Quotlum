import 'package:flutter/material.dart';
import 'package:quotlum/features/app/data/data_sources/local/theme_color_data_source.dart';

class ThemeColorRepository {
  static Future<Color> getAppBackgroundColor() async {
    final int colorValue = await ThemeColorDataSource.getAppBackgroundColor();
    
    return Color(colorValue);
  }

  static Future<Color> getAppbarContentColor() async {
    final int colorValue = await ThemeColorDataSource.getAppbarContentColor();
    
    return Color(colorValue);
  }

  static void saveColor(String fieldName, Color color){
    ThemeColorDataSource.saveColor(fieldName, color.value);
  }
}
