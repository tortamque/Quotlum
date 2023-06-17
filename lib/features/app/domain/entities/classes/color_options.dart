import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/widgets/color_change/color_option.dart';

class ColorOptions{
  static const List<ColorOption> colors = [
    ColorOption(appBackgroundColor:Colors.redAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.blueAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.cyanAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.limeAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.pinkAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.tealAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.greenAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.amberAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.indigoAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.orangeAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.purpleAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.yellowAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.lightBlueAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.deepOrangeAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.deepPurpleAccent, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),

    ColorOption(appBackgroundColor:Colors.lightGreenAccent, appbarContentColor: Colors.black, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.grey, appbarContentColor: Colors.white, cardBackgroundColor: Colors.white),
    ColorOption(appBackgroundColor:Colors.white, appbarContentColor: Colors.black, cardBackgroundColor: Colors.grey)
  ];
}