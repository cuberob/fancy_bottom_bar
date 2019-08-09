library fancy_tab;

import 'package:flutter/material.dart';

class FancyTab extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  final int selectedPosition;
  final List<FancyTab> items;
  final Color bgColor;
  final Color indicatorColor;
  final Color iconColor;
  final Color textColor;

  FancyTab({
    this.onItemSelected,
    this.selectedPosition,
    this.items,
    this.bgColor,
    this.indicatorColor,
    this.iconColor,
    this.textColor,
  })  : assert(items.isNotEmpty),
        assert(selectedPosition >= 0 && selectedPosition < items.length);

  @override
  _FancyTabState createState() => _FancyTabState();
}

class _FancyTabState extends State<FancyTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }

  @override
  void didUpdateWidget(FancyTab oldWidget) {}
}
