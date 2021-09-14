import 'package:bloc/bloc.dart';
import 'package:nhl/data/repos/data_repo.dart';
import 'bloc.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final DataRepository dataRepository;
  GameBloc(this.dataRepository) : super(GameState.loading());

  void play() {
    add(PlayRound());
  }

  void reset() {
    add(Reset());
  }

  @override
  Stream<GameState> mapEventToState(GameEvent event) async* {
    if (event is PlayRound) {
      yield* mapPlayRoundEvent();
    } else if (event is Reset) {
      yield* mapResetToRoundEvent();
    }
  }

  Stream<GameState> mapPlayRoundEvent() async* {
    yield GameState.loading();
    await dataRepository.playRound();
    yield GameState((g) => g
      ..completedRoundsData.replace(dataRepository.completedRoundsData)
      ..currentRoundInfo = dataRepository.currentRoundInfo
      ..currentRound = dataRepository.currentRound
      ..isLoading = false);
  }

  Stream<GameState> mapResetToRoundEvent() async* {
    yield GameState.loading();
    await dataRepository.reset();
    yield GameState((g) => g
      ..completedRoundsData.replace(dataRepository.completedRoundsData)
      ..currentRoundInfo = dataRepository.currentRoundInfo
      ..currentRound = dataRepository.currentRound
      ..isLoading = false);
  }
}
