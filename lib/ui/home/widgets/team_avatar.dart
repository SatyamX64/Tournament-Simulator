import 'package:flutter/material.dart';
import 'package:nhl/gen/assets.gen.dart';

class TeamAvatar extends StatelessWidget {
  const TeamAvatar({
    Key? key,
    required this.showTrophy,
    required this.image,
  }) : super(key: key);

  final bool showTrophy;
  final Image image;

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
            child: image),
        showTrophy
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 24,
                  width: 24,
                  padding: EdgeInsets.all(4),
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
