import 'package:nhl/data/models/entity/entity.dart';
import 'package:nhl/data/source/data_source.dart';
import 'package:nhl/utils/my_const.dart';

typedef RoundResult = List<MatchResult>;
typedef RoundInfo = List<MatchInfo>;

class DataRepository {
  List<RoundResult> _completedRoundsData = [];
  late RoundInfo _currentRoundInfo;
  int _currentRound = 0;

  bool get isLastRound {
    return _currentRound == UI_CONST.ROUNDS;
  }

  bool get isInitial {
    return _currentRound == 0;
  }

  int get currentRound {
    return _currentRound;
  }

  RoundInfo get currentRoundInfo {
    return _currentRoundInfo;
  }

  List<RoundResult> get completedRoundsData {
    return _completedRoundsData;
  }

  DataSource dataSource;

  DataRepository(this.dataSource);

  Future<void> playRound() async {
    // await Future.delayed(Duration(seconds: 0));
    if (!isInitial) {
      RoundResult result =
          await dataSource.getResultForRound(round: currentRound);
      _completedRoundsData.add(result);
    }
    if (isLastRound) {
      return;
    }
    _currentRound++;
    _currentRoundInfo =
        await dataSource.getPreGameInfoForRound(round: currentRound);
  }

  Future<void> reset() async {
    _currentRound = 1;
    _currentRoundInfo = await dataSource.getPreGameInfoForRound(round: 1);
    _completedRoundsData.clear();
  }
}
