import 'package:flutter/material.dart';

class SlidingTeamAnimation extends StatefulWidget {
  const SlidingTeamAnimation(
      {Key? key, required this.image_path, required this.name})
      : super(key: key);

  final String image_path;
  final String name;

  @override
  _SlidingTeamAnimationState createState() => _SlidingTeamAnimationState();
}

class _SlidingTeamAnimationState extends State<SlidingTeamAnimation> {
  double opacity = 0.0;
  double left = 120;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          opacity = 1.0;
          left = 0;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
            left: left,
            top: 0,
            bottom: 0,
            child: SizedBox(
              height: 72,
              width: 72,
              child: Image.asset(
                'assets/icons/teams/${widget.image_path}.png',
                fit: BoxFit.contain,
              ),
            ),
            duration: Duration(milliseconds: 600)),
        Center(
          child: AnimatedOpacity(
            opacity: opacity,
            duration: Duration(milliseconds: 600),
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
