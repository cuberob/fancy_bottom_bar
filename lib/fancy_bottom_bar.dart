library fancy_bottom_bar;

import 'package:fancy_bottom_bar/fancy_bottom_item.dart';
import 'package:fancy_bottom_bar/fancy_item.dart';
import 'package:flutter/material.dart';

export 'fancy_bottom_item.dart';
export 'fancy_bottom_bar.dart';

class FancyBottomBar extends StatelessWidget {
  final ValueChanged<int> onItemSelected;
  final int selectedPosition;
  final List<FancyBottomItem> items;
  final Color bgColor;
  final Color indicatorColor;
  final Color iconColor;
  final Color textColor;

  FancyBottomBar({
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
        child: SizedBox(
          child: Row(
            children: items
                .asMap()
                .map((i, item) => MapEntry(
                    i,
                    Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => onItemSelected(i),
                        child: FancyItem(
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
