part of rich_console;

class RichStyle {
  final Color? foreground;
  final Color? background;
  final bool italic;
  final bool bold;
  final bool underline;

  ///Rarely supported feature
  final bool slowBlink;

  ///Rarely supported feature
  final bool rapidBlink;
  final bool invert;

  ///Rarely supported feature
  final bool conceal;
  final bool strike;

  ///Rarely supported feature
  final bool gothic;
  final bool doubleUnderline;
  final bool framed;
  final bool encircled;
  final bool overlined;

  ///Rarely supported feature
  final Color? underlineColor;

  RichStyle({
    this.background,
    this.foreground,
    this.italic = false,
    this.bold = false,
    this.underline = false,
    this.slowBlink = false,
    this.rapidBlink = false,
    this.invert = false,
    this.conceal = false,
    this.strike = false,
    this.gothic = false,
    this.doubleUnderline = false,
    this.framed = false,
    this.encircled = false,
    this.overlined = false,
    this.underlineColor,
  });

  List<String> get codes => [
        italicCode,
        invertCode,
        concealCode,
        strikeCode,
        gothicCode,
        doubleUnderlineCode,
        framedCode,
        encircledCode,
        overlinedCode,
        boldCode,
        slowBlinkCode,
        rapidBlinkCode,
        underlineCode,
        underlineColorCode,
        foregroundCode,
        backgroundCode
      ];

  RichStyle copyWith(
      {Color? foreground,
      Color? background,
      bool? italic,
      bool? bold,
      bool? underline,
      bool? slowBlink,
      bool? rapidBlink,
      bool? invert,
      bool? conceal,
      bool? strike,
      bool? gothic,
      bool? doubleUnderline,
      bool? framed,
      bool? encircled,
      bool? overlined,
      Color? underlineColor}) {
    return RichStyle(
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      italic: italic ?? this.italic,
      bold: bold ?? this.bold,
      underline: underline ?? this.underline,
      slowBlink: slowBlink ?? this.slowBlink,
      rapidBlink: rapidBlink ?? this.rapidBlink,
      invert: invert ?? this.invert,
      conceal: conceal ?? this.conceal,
      strike: strike ?? this.strike,
      gothic: gothic ?? this.gothic,
      doubleUnderline: doubleUnderline ?? this.doubleUnderline,
      framed: framed ?? this.framed,
      encircled: encircled ?? this.encircled,
      overlined: overlined ?? this.overlined,
      underlineColor: underlineColor ?? this.underlineColor,
    );
  }

  String applyTo(String text) {
    final joined = codes.join('');
    //removes last ":"
    final appliedCodes = joined.substring(0, joined.length - 1);
    return "\u{1B}["
        "$appliedCodes"
        "m"
        "$text"
        "\u{1B}[0m";
  }

  String get backgroundCode => background != null
      ? "48:2:${background!.red}:${background!.green}:${background!.blue}:"
      : "49:";

  String get foregroundCode => foreground != null
      ? "38:2:${foreground!.red}:${foreground!.green}:${foreground!.blue}:"
      : "39:";

  String get boldCode => bold ? "1:" : "";

  String get italicCode => italic ? "3:" : "";

  String get underlineCode => underline ? "4:" : "";

  String get slowBlinkCode => slowBlink ? "5:" : "";

  String get rapidBlinkCode => rapidBlink ? "6:" : "";

  String get invertCode => invert ? "7:" : "";

  String get concealCode => conceal ? "8:" : "";

  String get strikeCode => strike ? "9:" : "";

  String get gothicCode => gothic ? "20:" : "";

  String get doubleUnderlineCode => doubleUnderline ? "21:" : "";

  String get framedCode => framed ? "51:" : "";

  String get encircledCode => encircled ? "52:" : "";

  String get overlinedCode => overlined ? "53:" : "";

  String get underlineColorCode => underlineColor != null
      ? "53:2:${underlineColor!.red}:${underlineColor!.green}:${underlineColor!.blue}"
      : "";
}
