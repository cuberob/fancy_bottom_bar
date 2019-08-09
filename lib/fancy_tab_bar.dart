library fancy_tab;

import 'package:fancy_tab/fancy_tab.dart';
import 'package:fancy_tab/fancy_tab_item.dart';
import 'package:flutter/material.dart';

export 'fancy_tab.dart';
export 'fancy_tab_item.dart';

class FancyTabBar extends StatelessWidget {
  final ValueChanged<int> onItemSelected;
  final int selectedPosition;
  final List<FancyTabItem> items;
  final Color bgColor;
  final Color indicatorColor;
  final Color iconColor;
  final Color textColor;

  FancyTabBar({
    this.onItemSelected,
    this.selectedPosition,
    this.items,
    this.bgColor,
    this.indicatorColor,
    this.iconColor,
    this.textColor,
  })  : assert(items.isNotEmpty),
        assert(selectedPosition != null),
        assert(selectedPosition >= 0 && selectedPosition < items.length);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 8,
      color: bgColor ?? Theme.of(context).bottomAppBarColor,
      child: SafeArea(
        child: Container(
          child: Row(
            children: items
                .asMap()
                .map((i, item) => MapEntry(
                    i,
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onItemSelected(i),
                        child: FancyTab(
                          item: item,
                          selected: i == selectedPosition,
                        ),
                      ),
                    )))
                .values
                .toList(),
          ),
          height: 64,
        ),
      ),
    );
  }
}
