part of rich_console;

///Print [object] with settable styles and colors. Note that some parameters
///and features might not be supported by your IDE. For more info regarding
///supportability please look at [RichStyle] or visit
///[ANSI escape code documentation](https://en.wikipedia.org/wiki/ANSI_escape_code)
///
/// * Timestamp
/// If a [startTime] is provided the timestamp will be the duration from the
/// start time to now.
/// If no [startTime] the current date time with the [timeFormatter] will be
/// displayed as timestamp.
///
void printRich(
  Object? object, {
  bool printToConsole = kDebugMode,
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
  bool timestamp = false,
  DateTime? startTime,
  DateFormat? timeFormatter,
  Color? underlineColor,
  RichStyle? style,
}) {
  // * Time stamp
  String stringTime = "";
  final time = DateTime.now();
  if (timestamp) {
    if (startTime == null) {
      final formatter = timeFormatter ?? DateFormat('hh:mm:ss');
      stringTime = "${formatter.format(time)} | ";
    } else {
      stringTime = "${time.difference(startTime)} | ";
    }
  }

  // * print style
  final printStyle = (style ?? RichStyle()).copyWith(
    foreground: foreground,
    background: background,
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
  );

  if (printToConsole) {
    print(stringTime + printStyle.applyTo(object.toString()));
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
