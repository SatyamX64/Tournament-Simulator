import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nhl/ui/home/bloc/bloc.dart';
import 'package:nhl/utils/my_const.dart';

import 'match_card.dart';

class Podium extends StatelessWidget {
  const Podium(this.state, {Key? key}) : super(key: key);

  final GameState state;
  final int round = UI_CONST.ROUNDS;

  @override
  Widget build(BuildContext context) {
    Widget _getChild() {
      if (state.completedRoundsData.length == UI_CONST.ROUNDS) {
        return Center(
          child: Text('${state.completedRoundsData.last[0].home.team} won'),
        );
      } else if (state.currentRound == round) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MatchCard();
                },
                itemCount: state.currentRoundInfo!.length,
              ),
            ),
            Container(
              height: 64,
              width: double.maxFinite,
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                child: Text(
                    "Get Round $round Result"), // We will also show match info here
                onPressed: () {
                  BlocProvider.of<GameBloc>(context).play();
                },
              ),
            ),
          ],
        );
      } else {
        return Center(child: Text('No Data Available'));
      }
    }

    return Container(margin: EdgeInsets.all(16), child: _getChild());
  }
}
