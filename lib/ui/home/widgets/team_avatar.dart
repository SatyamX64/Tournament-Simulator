import 'package:flutter/material.dart';
import 'package:nhl/gen/assets.gen.dart';

class TeamAvatar extends StatefulWidget {
  const TeamAvatar({
    Key? key,
    required this.showTrophy,
    required this.image,
  }) : super(key: key);

  final bool showTrophy;
  final Image image;

  @override
  _TeamAvatarState createState() => _TeamAvatarState();
}

class _TeamAvatarState extends State<TeamAvatar> {
  double trophySize = 0.0;
  @override
  void initState() {
    if (widget.showTrophy) {
      Future.delayed(Duration(milliseconds: 300), () {
        if (mounted) {
          setState(() {
            trophySize = 24;
          });
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 64,
            width: 64,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black38,
              shape: BoxShape.circle,
            ),
            child: widget.image),
        widget.showTrophy
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: trophySize,
                  width: trophySize,
                  padding: EdgeInsets.all(trophySize / 6),
                  child: Assets.icons.trophy.image(fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      color: Colors.black38, shape: BoxShape.circle),
                ),
              )
            : Container(),
      ],
    );
  }
}
