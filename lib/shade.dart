import 'package:flutter/material.dart';

@Deprecated('Use [Color]')
enum Shade {
  DEFAULT,
  BLACK,
  RED,
  GREEN,
  YELLOW,
  BLUE,
  MAGENTA,
  CYAN,
  LIGHT_GRAY,
  DARK_GRAY,
  LIGHT_RED,
  LIGHT_GREEN,
  LIGHT_YELLOW,
  LIGHT_BLUE,
  LIGHT_MAGENTA,
  LIGHT_CYAN,
  WHITE,
}

extension ShadeHelper on Shade {
  Color? toColor() {
    switch (this) {
      case Shade.DEFAULT:
        return null;
      case Shade.BLACK:
        return Colors.black;
      case Shade.RED:
        return Colors.red;
      case Shade.GREEN:
        return Colors.green;
      case Shade.YELLOW:
        return Colors.yellow;
      case Shade.BLUE:
        return Colors.blue;
      case Shade.MAGENTA:
        return Colors.purple;
      case Shade.CYAN:
        return Colors.cyan;
      case Shade.LIGHT_GRAY:
        return Colors.grey;
      case Shade.DARK_GRAY:
        return Colors.grey[800];
      case Shade.LIGHT_RED:
        return Colors.redAccent;
      case Shade.LIGHT_GREEN:
        return Colors.greenAccent;
      case Shade.LIGHT_YELLOW:
        return Colors.yellowAccent;
      case Shade.LIGHT_BLUE:
        return Colors.blueAccent;
      case Shade.LIGHT_MAGENTA:
        return Colors.purpleAccent;
      case Shade.LIGHT_CYAN:
        return Colors.cyanAccent;
      case Shade.WHITE:
        return Colors.white;
    }
  }
}
