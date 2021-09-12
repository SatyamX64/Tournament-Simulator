import 'package:flutter/material.dart';
import 'package:nhl/gen/assets.gen.dart';
import 'package:nhl/ui/common_widgets/animated_progress_bar.dart';
import 'package:nhl/utils/my_const.dart';

final _milliseconds = 300;
final _checkpointSize = 24.0;
final _trophySize = 40.0;

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.percent,
  }) : super(key: key);

  final double percent;

  @override
  Widget build(BuildContext context) {
    return AnimatedProgressBar(
      active: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.red, Colors.orange])),
      unactive: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.white24),
      height: 12,
      milliseconds: _milliseconds,
      checkpointSize: _checkpointSize,
      trophySize: _trophySize,
      checkpoints: [
        _Checkpoint(percent, 1),
        _Checkpoint(percent, 2),
        _Checkpoint(percent, 3),
        // _Checkpoint(percent, 4),
        _Trophy(percent),
      ],
      percent: percent,
    );
  }
}

class _Checkpoint extends StatelessWidget {
  const _Checkpoint(this.percent, this.round, {Key? key}) : super(key: key);

  final double percent;
  final double round;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _checkpointSize,
      width: _checkpointSize,
      child: AnimatedContainer(
        duration: Duration(milliseconds: _milliseconds),
        margin: EdgeInsets.all(
            percent > (100 / UI_CONST.ROUNDS) * round - 5 ? 2 : 8),
        decoration: BoxDecoration(
            color: percent > (100 / UI_CONST.ROUNDS) * round - 5
                ? Colors.white
                : Colors.white30,
            shape: BoxShape.circle),
      ),
    );
  }
}

class _Trophy extends StatelessWidget {
  const _Trophy(this.percent, {Key? key}) : super(key: key);
  final double percent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _trophySize,
      width: _trophySize,
      child: AnimatedContainer(
        duration: Duration(milliseconds: _milliseconds),
        margin: EdgeInsets.all(
          percent > 95.00 ? 4 : 12,
        ),
        child: Assets.icons.trophy.image(fit: BoxFit.cover),
      ),
    );
  }
}
