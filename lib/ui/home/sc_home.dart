import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:lottie/lottie.dart';
import 'package:nhl/ui/home/bloc/bloc.dart';
import 'package:nhl/ui/home/widgets/podium.dart';
import 'package:nhl/utils/my_const.dart';

import 'bloc/game_bloc.dart';
import 'widgets/widget_barrel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _controller;
  late final StreamController<double> _percentController;
  late Size _size;

  final _searchBloc = KiwiContainer().resolve<GameBloc>();

  Stream<double> get _percentStream => _percentController.stream;
  Sink<double> get _percentSink => _percentController.sink;

  @override
  void initState() {
    _controller = PageController()..addListener(_listener);
    _percentController = StreamController<double>();

    super.initState();
  }

  void _listener() {
    _percentSink
        .add((_controller.offset / _size.width + 1) * 100 / UI_CONST.ROUNDS);
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
    return BlocProvider.value(
      value: _searchBloc..play(),
      child: SafeArea(
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
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                    overscroll.disallowGlow();
                    return true;
                  },
                  child: BlocListener<GameBloc, GameState>(
                    listener: (context, state) {
                      if (!state.isLoading) {
                        if (state.currentRound == UI_CONST.ROUNDS &&
                            state.completedRoundsData.length ==
                                UI_CONST.ROUNDS) {
                          _percentSink.add(100.0);
                          return;
                        } else if (state.currentRound == 1) {
                          _percentSink.add(100.0 / UI_CONST.ROUNDS);
                          return;
                        } else {
                          _percentSink.add((state.currentRound - 1) *
                              (100 / UI_CONST.ROUNDS));
                        }
                      }
                    },
                    child: BlocBuilder<GameBloc, GameState>(
                        builder: (context, state) {
                      if (state.isLoading) {
                        return Center(child: CupertinoActivityIndicator());
                      } else {
                        return PageView(
                          physics: ClampingScrollPhysics(),
                          controller: _controller,
                          children: [
                            ScoreBoard(1, state),
                            ScoreBoard(2, state),
                            ScoreBoard(3, state),
                            ScoreBoard(4, state),
                            Podium(state),
                          ],
                        );
                      }
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
