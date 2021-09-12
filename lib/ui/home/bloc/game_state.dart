library game_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:nhl/data/source/data_source.dart';
import 'package:nhl/data/models/entity/entity.dart';

part 'game_state.g.dart';

abstract class GameState implements Built<GameState, GameStateBuilder> {
  BuiltList<RoundResult> get completedRoundsData;
  RoundInfo? get currentRoundInfo;
  int get currentRound;
  bool get isLoading;

  GameState._();

  factory GameState([updates(GameStateBuilder b)]) = _$GameState;

  factory GameState.loading() {
    return GameState((b) => b
      ..isLoading = true
      ..completedRoundsData.replace(BuiltList<RoundResult>())
      ..currentRound = 0
      ..currentRoundInfo = null);
  }
}
