import 'package:colorize/colorize.dart';
import 'package:rich_console/shade.dart';

///Print [object] with settable styles and colors
void printRich(
  Object? object, {
  Shade? bg,
  Shade? fg,
  bool? bold,
  bool? dark,
  bool? italic,
  bool? underline,
  bool? blink,
  bool? reverse,
  bool? concealed,
}) {
  final List<Styles> styles = [];
  styles.nonNullAdd(bg?.toStyle(true));
  styles.nonNullAdd(fg?.toStyle());
  styles.nonNullAdd(bold == true ? Styles.BOLD : null);
  styles.nonNullAdd(dark == true ? Styles.DARK : null);
  styles.nonNullAdd(italic == true ? Styles.ITALIC : null);
  styles.nonNullAdd(underline == true ? Styles.UNDERLINE : null);
  styles.nonNullAdd(blink == true ? Styles.BLINK : null);
  styles.nonNullAdd(reverse == true ? Styles.REVERSE : null);
  styles.nonNullAdd(concealed == true ? Styles.CONCEALED : null);

  Colorize string = Colorize("$object");
  for (Styles style in styles) {
    string.apply(style);
  }
  print(string);
}

///Prints [object] as a warning
void printWarning(
  Object? object, {
  Shade? bg,
  Shade? fg,
  bool? bold,
  bool? dark,
  bool? italic,
  bool? underline,
  bool? blink,
  bool? reverse,
  bool? concealed,
}) {
  printRich(
    object,
    bg: bg,
    fg: fg ?? Shade.YELLOW,
    bold: bold,
    dark: dark,
    italic: italic,
    underline: underline,
    blink: blink,
    reverse: reverse,
    concealed: concealed,
  );
}

///Prints [object] as an error
void printError(
  Object? object, {
  Shade? bg,
  Shade? fg,
  bool? bold,
  bool? dark,
  bool? italic,
  bool? underline,
  bool? blink,
  bool? reverse,
  bool? concealed,
}) {
  printRich(
    object,
    bg: bg,
    fg: fg ?? Shade.RED,
    bold: bold,
    dark: dark,
    italic: italic,
    underline: underline,
    blink: blink,
    reverse: reverse,
    concealed: concealed,
  );
}

extension _StylesList on List<Styles> {
  void nonNullAdd(Styles? value) {
    if (value != null) add(value);
  }
}
