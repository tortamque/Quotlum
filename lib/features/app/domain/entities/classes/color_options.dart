import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/widgets/color_change/color_option.dart';

class ColorOptions{
  static const List<ColorOption> colors = [
    ColorOption(mainColor:Colors.redAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),
    ColorOption(mainColor:Colors.blueAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),
    ColorOption(mainColor:Colors.cyanAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),

    ColorOption(mainColor:Colors.limeAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),
    ColorOption(mainColor:Colors.pinkAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),
    ColorOption(mainColor:Colors.tealAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),

    ColorOption(mainColor:Colors.greenAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),
    ColorOption(mainColor:Colors.amberAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),
    ColorOption(mainColor:Colors.indigoAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),

    ColorOption(mainColor:Colors.orangeAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),
    ColorOption(mainColor:Colors.purpleAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),
    ColorOption(mainColor:Colors.yellowAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),

    ColorOption(mainColor:Colors.lightBlueAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),
    ColorOption(mainColor:Colors.deepOrangeAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),
    ColorOption(mainColor:Colors.deepPurpleAccent, secondaryColor: Colors.white, tertiaryColor: Colors.black),

    ColorOption(mainColor:Colors.lightGreenAccent, secondaryColor: Colors.black, tertiaryColor: Colors.white),
    ColorOption(mainColor:Colors.grey, secondaryColor: Colors.white, tertiaryColor: Colors.black),
    ColorOption(mainColor:Colors.white, secondaryColor: Colors.black, tertiaryColor: Colors.white)
  ];
}