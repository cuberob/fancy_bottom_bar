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
    final titleText = Text(widget.item.title,);
    final selectedIndicator = Container(width: 4,
      height: 4,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),);
    final title = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(flex: 4),
        titleText,
        Spacer(flex: 2),
        selectedIndicator,
        Spacer(flex: 1),
      ],
    );
    var icon = Icon(widget.item.icon);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          overflow: Overflow.clip,
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedPositioned(
              child: title,
              duration: Duration(milliseconds: 300),
              top: widget.selected ? 0 : 200,
              bottom: widget.selected ? 0 : -200,
            ),
            AnimatedPositioned(
              child: icon,
              duration: Duration(milliseconds: 300),
              top: widget.selected ? -200 : 0,
              bottom: widget.selected ? 200 : 0,
            ),
          ],
        );
      },
    );
  }

  @override
  void didUpdateWidget(FancyTab oldWidget) {
    if (oldWidget.selected != widget.selected) {
      if(widget.selected) {
        print("Show pulse animation?");
      }
    }
    super.didUpdateWidget(oldWidget);
  }
}
