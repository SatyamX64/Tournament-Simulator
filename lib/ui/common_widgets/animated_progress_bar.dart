import 'package:flutter/material.dart';
import 'package:nhl/utils/my_const.dart';

class AnimatedProgressBar extends StatefulWidget {
  final double percent;
  final double height;
  final List<Widget> checkpoints;
  final double trophySize;
  final double checkpointSize;
  final int milliseconds;
  final BoxDecoration active;
  final BoxDecoration unactive;
  final int count;

  AnimatedProgressBar({
    required this.percent,
    required this.height,
    required this.milliseconds,
    required this.checkpoints,
    required this.active,
    required this.unactive,
    required this.trophySize,
    required this.checkpointSize,
  }) : count = checkpoints.length {
    assert(count != 0);
    assert(count == UI_CONST.ROUNDS);
    assert(percent >= 0);
    assert(height > 0);
  }

  @override
  State<StatefulWidget> createState() => AnimatedProgressBarState();
}

class AnimatedProgressBarState extends State<AnimatedProgressBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final maxWidth = constraint.maxWidth - widget.trophySize / 2;
      final widthProgress = maxWidth * widget.percent / 100;

      return Container(
        width: constraint.maxWidth,
        height: constraint.maxHeight,
        alignment: Alignment.centerLeft,
        child: Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
                width: maxWidth,
                height: widget.height,
                decoration: widget.unactive),
            AnimatedContainer(
                duration: Duration(milliseconds: widget.milliseconds),
                width: widthProgress,
                height: widget.height,
                decoration: widget.active),
            for (int i = 0; i < widget.count; i++)
              Positioned(
                  left: i == widget.count - 1
                      ? maxWidth - widget.trophySize / 2
                      : ((i + 1) / widget.count) * maxWidth -
                          widget.checkpointSize / 2,
                  child: widget.checkpoints.elementAt(i)),
          ],
        ),
      );
    });
  }
}
