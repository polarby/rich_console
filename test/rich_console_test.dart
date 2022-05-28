


import 'package:rich_console/printRich.dart';
import 'package:rich_console/shade.dart';

void main(){
  printRich("This is my String", fg: Shade.BLUE);
  printRich("This is my String", fg: Shade.RED, bg: Shade.DARK_GRAY);
  printRich("This is my String", fg: Shade.GREEN, bold: true, italic: true, underline: true);
  printRich("This is my String", fg: Shade.YELLOW,  bg: Shade.BLACK, reverse: true);
  printRich("This is my String", fg: Shade.CYAN,  bg: Shade.MAGENTA, blink: true);
}