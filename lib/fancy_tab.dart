import 'package:fancy_tab/fancy_tab_item.dart';
import 'package:flutter/material.dart';

class FancyTab extends StatefulWidget {
  final FancyTabItem item;
  final bool selected;

  FancyTab({this.item, this.selected});

  @override
  _FancyTabState createState() => _FancyTabState();
}

class _FancyTabState extends State<FancyTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        duration: Duration(milliseconds: 500),
        firstChild: Text(widget.item.title),
        secondChild: Icon(widget.item.icon),
        crossFadeState: widget.selected
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      ),
    );
  }

  @override
  void didUpdateWidget(FancyTab oldWidget) {
    if (oldWidget.selected != widget.selected) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }
}
