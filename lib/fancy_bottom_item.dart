import 'package:flutter/widgets.dart';

class FancyBottomItem {
  final Widget title;
  final Widget icon;

  const FancyBottomItem({this.title, this.icon})
      : assert(title != null),
        assert(icon != null);
}
