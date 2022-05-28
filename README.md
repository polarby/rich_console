A natural way of printing text styles and colors in flutter.

[![pub package](https://img.shields.io/pub/v/http.svg)](https://pub.dev/packages/rich_console)

This packages contains a set of configurations that make it easy to differentiate console 
outputs and print all sort of colors. It's *multi-IDE* compatible as it is based on basic ansi 
text configurations. 

This main underlying package is [colorize](https://pub.dev/packages/colorize).


## Usage

![](https://i.imgur.com/otsvo40.jpeg)

```dart
import 'package:rich_console/printRich.dart';

void main(){
  
  printRich("This is my String", fg: Shade.BLUE, italic: true);
  
}
```

### Functions

* `printRich()`

* `printError()`

* `printWarning()`


### Settable Parameters

* Shade **fg** (foreground color)
* Shade **bg** (background color)
* bool **bold** 
* bool **dark** 
* bool **italic** 
* bool **underline** 
* bool **blink** 
* bool **reverse** 
* bool **concealed** 



## Contribution

Feel free to make pull requests. Any additional style is appreciated.





