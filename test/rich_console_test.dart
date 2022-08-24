import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rich_console/rich_console.dart';

void main() {
  test('adds one to input values', () {
    printRich(
      "WildMix",
      foreground: Colors.red,
      background: Colors.cyan,
      bold: true,
      underline: true,
      italic: true,
    );
    printRich(
      "Wow, so many options!",
      foreground: Colors.greenAccent,
      background: Colors.orangeAccent,
      bold: true,
      strike: true,
      encircled: true,
    );
    printRich(
      "Dream of any color...",
      foreground: Colors.pinkAccent,
      background: Colors.black,
      bold: true,
      italic: true,
      encircled: true,
    );
    print("\n<<Most common supported Features (Android Studio)>>\n");
    printRich("Background", background: Colors.green);
    printRich("Foreground", foreground: Colors.blue);
    printRich("Italic", italic: true);
    printRich("Bold", bold: true);
    printRich("Underline", underline: true);
    printRich("Invert",
        foreground: Colors.blue, background: Colors.green, invert: true);
    printRich("Strike", strike: true);
    printRich("DoubleUnderline", doubleUnderline: true);
    printRich("Framed", framed: true);
    printRich("Encircled", encircled: true);

    final yourReusableStyle = RichStyle(italic: true, foreground: Colors.pinkAccent);
    printRich("Your Text", style: yourReusableStyle, timestamp: true);
    printRich("Another Text", style: yourReusableStyle.copyWith(framed: true));
  });
}
