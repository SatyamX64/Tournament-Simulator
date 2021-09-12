import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nhl/ui/common_widgets/sliding_team_animation.dart';
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Lottie.asset('assets/lottie/trophy.json'),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: SlidingTeamAnimation(
                  name: state.completedRoundsData.last[0].home.team.name,
                  image_path:
                      state.completedRoundsData.last[0].home.team.image_path,
                ),
              ),
              Text(
                '2019 Champions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          ),
        );
      } else if (state.currentRound == round) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MatchInfoCard(
                    home: state.currentRoundInfo![index].home,
                    away: state.currentRoundInfo![index].away,
                  );
                },
                itemCount: state.currentRoundInfo!.length,
              ),
            ),
            Container(
              height: 64,
              width: double.maxFinite,
              padding: EdgeInsets.all(8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient:
                        LinearGradient(colors: [Colors.purple, Colors.red])),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.transparent),
                  child: Text(
                    "Start Finals !!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    BlocProvider.of<GameBloc>(context).play();
                  },
                ),
              ),
            ),
          ],
        );
      } else {
        return Center(
            child: Text(
          'Round Not Started',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white38),
        ));
      }
    }

    return Container(margin: EdgeInsets.all(16), child: _getChild());
  }
}
