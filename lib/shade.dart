import 'package:colorize/colorize.dart';

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
  toStyle([bool isBackground = false]) {
    if (isBackground) {
      return Styles.values
          .firstWhere((element) => element.name == "BG_$name");
    } else {
      return Styles.values.firstWhere((element) => element.name == name);
    }
  }
}