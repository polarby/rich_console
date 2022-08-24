part of rich_console;

///Print [object] with settable styles and colors. Note that some parameters
///and features might not be supported by your IDE. For more info regarding
///supportability please look at [RichStyle] or visit
///[ANSI escape code documentation](https://en.wikipedia.org/wiki/ANSI_escape_code)
void printRich(
  Object? object, {
  @Deprecated('Use [background]') Shade? bg,
  @Deprecated('Use [foreground]') Shade? fg,
  Color? foreground,
  Color? background,
  bool italic = false,
  bool bold = false,
  bool underline = false,
  bool slowBlink = false,
  bool rapidBlink = false,
  bool invert = false,
  bool conceal = false,
  bool strike = false,
  bool gothic = false,
  bool doubleUnderline = false,
  bool framed = false,
  bool encircled = false,
  bool overlined = false,
  bool timestamp = true,
  Color? underlineColor,
  RichStyle? style,
}) {
  final time = DateTime.now();
  final stringTime =
      "${time.hour}h:${time.minute}min:${time.second}sec:${time.millisecond}ms | ";
  if (style != null) {
    print((timestamp ? stringTime : "") + style.applyTo(object.toString()));
  } else {
    final toPrint = RichStyle(
      foreground: foreground ?? fg?.toColor(),
      background: background ?? bg?.toColor(),
      italic: italic,
      bold: bold,
      underline: underline,
      slowBlink: slowBlink,
      rapidBlink: rapidBlink,
      invert: invert,
      conceal: conceal,
      strike: strike,
      gothic: gothic,
      doubleUnderline: doubleUnderline,
      framed: framed,
      encircled: encircled,
      overlined: overlined,
      underlineColor: underlineColor,
    ).applyTo(object.toString());
    print((timestamp ? stringTime : "") + toPrint);
  }
}

///Prints [object] as a warning
void printWarning(Object? object, [RichStyle? style]) {
  printRich(object, foreground: Colors.yellow, style: style);
}

///Prints [object] as an error
void printError(Object? object, [RichStyle? style]) {
  printRich(object, foreground: Colors.red, style: style);
}
