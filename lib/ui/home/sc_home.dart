import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nhl/utils/my_const.dart';

import 'widgets/widget_barrel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _controller;
  late final StreamController<double> _percentController;
  late final Size _size;

  Stream<double> get _percentStream => _percentController.stream;
  Sink<double> get _percentSink => _percentController.sink;

  @override
  void initState() {
    _controller = PageController()..addListener(_listener);
    _percentController = StreamController<double>();

    super.initState();
  }

  void _listener() {
    _percentSink.add((_controller.offset / _size.width + 1) * 20);
  }

  @override
  void dispose() {
    _controller.dispose();
    _percentController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: StreamBuilder(
                  stream: _percentStream,
                  initialData: 100 / UI_CONST.ROUNDS,
                  builder: (_, snapshot) {
                    return ProgressBar(percent: snapshot.data as double);
                  }),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  ScoreBoard(),
                  ScoreBoard(),
                  ScoreBoard(),
                  ScoreBoard(),
                  ScoreBoard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
