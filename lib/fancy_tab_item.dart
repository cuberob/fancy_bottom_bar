import 'package:flutter/widgets.dart';

class FancyTabItem {
  final Widget title;
  final Widget icon;

  const FancyTabItem({this.title, this.icon})
      : assert(title != null),
        assert(icon != null);
}
