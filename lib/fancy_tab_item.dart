import 'package:flutter/widgets.dart';

class FancyTabItem {
  final String title;
  final IconData icon;

  FancyTabItem({this.title, this.icon})
      : assert(title != null),
        assert(icon != null);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is FancyTabItem && runtimeType == other.runtimeType && title == other.title && icon == other.icon;

  @override
  int get hashCode => title.hashCode ^ icon.hashCode;
}
