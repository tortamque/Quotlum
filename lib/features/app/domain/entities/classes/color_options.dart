import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/widgets/color_change/color_option.dart';

class ColorOptions{
  static const List<ColorOption> colors = [
    ColorOption(appBackgroundColor:Color(0xFF817DBA), appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Color(0xFFA0C49D), appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Color(0xFFC4DFDF), appbarContentColor: Colors.black),

    ColorOption(appBackgroundColor:Color(0xFFA7727D), appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Color(0xFFD0B8A8), appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Color(0xFF9F8772), appbarContentColor: Colors.black),

    ColorOption(appBackgroundColor:Colors.redAccent, appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.blueAccent, appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.cyanAccent, appbarContentColor: Colors.black),

    ColorOption(appBackgroundColor:Colors.limeAccent, appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Colors.pinkAccent, appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.tealAccent, appbarContentColor: Colors.black),

    ColorOption(appBackgroundColor:Colors.greenAccent, appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Colors.amberAccent, appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Colors.indigoAccent, appbarContentColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.orangeAccent, appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Colors.purpleAccent, appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.yellowAccent, appbarContentColor: Colors.black),

    ColorOption(appBackgroundColor:Colors.lightBlueAccent, appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Colors.deepOrangeAccent, appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.deepPurpleAccent, appbarContentColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.lightGreenAccent, appbarContentColor: Colors.black),
    ColorOption(appBackgroundColor:Colors.grey, appbarContentColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.white, appbarContentColor: Colors.black)
  ];
}