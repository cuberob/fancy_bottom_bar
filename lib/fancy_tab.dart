import 'package:fancy_tab/fancy_tab_item.dart';
import 'package:fancy_tab/tap_ring.dart';
import 'package:flutter/material.dart';

const Duration ANIM_DURATION = const Duration(milliseconds: 400);

class FancyTab extends StatefulWidget {
  final FancyTabItem item;
  final bool selected;

  FancyTab({this.item, this.selected});

  @override
  _FancyTabState createState() => _FancyTabState();
}

class _FancyTabState extends State<FancyTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final selectedIndicator = Container(
      width: 4,
      height: 4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
    );
    final title = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(flex: 4),
        widget.item.title,
        Spacer(flex: 2),
        selectedIndicator,
        Spacer(flex: 1),
      ],
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          overflow: Overflow.clip,
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedPositioned(
              child: title,
              duration: ANIM_DURATION,
              top: widget.selected ? 0 : 0,
              bottom: widget.selected ? 0 : -200,
            ),
            AnimatedPositioned(
              child: widget.item.icon,
              duration: ANIM_DURATION,
              top: widget.selected ? -200 : 0,
              bottom: widget.selected ? 0 : 0,
            ),
            Positioned.fill(
              child: Center(
                child: widget.selected
                    ? TapRing(
                        color: Colors.blue,
                      )
                    : Container(),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  void didUpdateWidget(FancyTab oldWidget) {
    if (oldWidget.selected != widget.selected) {
      if (widget.selected) {
        print("Show pulse animation?");
      }
    }
    super.didUpdateWidget(oldWidget);
  }
}
