[![pub package](https://img.shields.io/pub/v/rich_console.svg)](https://pub.dev/packages/rich_console)

A **natural way** of printing text styles and colors in flutter/dart.

This packages contains a set of configurations that make it easy to differentiate console outputs
and print all sort of colors. It's *multi-IDE* compatible as it is based on the
basic [ANSI escape codes](https://en.wikipedia.org/wiki/ANSI_escape_code). Note that there might
be parameters and features that your IDE doesn't support. You will notice this simply that no effect
is applied to you text.

## Features

![](https://i.imgur.com/17SaE6T.jpg)

![](https://i.imgur.com/Whe5gbj.jpg)

## Usage

```dart
import 'package:rich_console/rich_console.dart';

void main(){
  
  // * Reusable styles
  final yourReusableStyle = RichStyle(italic: true, foreground: Colors.pinkAccent);
  printRich("Your Text", style: yourReusableStyle);
  printRich("Another Text", style: yourReusableStyle.copyWith(framed: true));
  
  // * Simple prints
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
}
```


## Additional Information

### Functions

* `printRich()`

* `printError()`

* `printWarning()`


### Settable Parameters

* Foreground
* Background
* Bold
* Italic
* Bold
* Underline
* SlowBlink
* RapidBlink
* Invert
* Conceal
* Strike
* Gothic
* DoubleUnderline
* Framed
* Encircled
* Overlined
* UnderlineColor


## Contributions

Please feel welcome add anything that is missing. Simply create a pull request. 
Especially, ff you are familiar with obtaining **text input from the console** please
make sure to add such features to this package.


