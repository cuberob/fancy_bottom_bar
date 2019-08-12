# fancy_bottom_bar

A different take on your standard bottom app bar. 
Inspired by https://dribbble.com/shots/6957731-Reader-app-tab-bar

# FancyBottomNavigation

![Demo Gif](https://github.com/cuberob/fancy_bottom_bar/blob/master/demo.gif "Demo")

## Getting Started

Add the plugin (pub coming soon):

```yaml
dependencies:
  ...
  fancy_bottom_bar: ^0.0.1
```

## Basic Usage

Adding the widget to a Scaffold
```dart
bottomNavigationBar: FancyBottomBar(
     items: [
              FancyBottomItem(title: Text("Home"), icon: Icon(Icons.home)),
              FancyBottomItem(title: Text("Connect"), icon: Icon(Icons.usb)),
              FancyBottomItem(title: Text("Profile"), icon: Icon(Icons.person))
    ],
    onItemSelected: (i) => setState(() => selectedPos = i),
    selectedPosition: selectedPos,
)
```
## FancyBottomBar
### required
**items** -> List of `FancyBottomItem` objects<br/>
**onItemSelected** -> Function to handle a tap selection change, receives an `int`<br/>
**selectedPosition** -> The currently selected position<br/>
### optional
**bgColor** -> The bottom app bar's background color, defaults to  the`Theme`'s `bottomAppBarColor`<br/>
**indicatorColor** -> The tiny circle indicator color, defaults to `Colors.black`<br/>
**selectedColor** -> The pulsing circle's color, defaults to  the`Theme`'s `accentColor`<br/>

## FancyBottomItem
**title** -> The widget to be used as the Title for this tab, usually a Text Widget<br/>
**icon** -> The widget to be used as the Icon for this tab, usually an Icon Widget<br/>

## Contributing

Contributions are always welcome, feel free to open a PR.

## License
```Copyright 2019 Little Robots

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```