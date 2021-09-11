import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:nhl/data/models/entity/entity.dart';

class DataSource {
  Future<List<MatchInfo>> getPreGameInfoForRound({required int round}) async {
    // assuming round starts from 1
    final jsonStr = await rootBundle.loadString('assets/data/playoffs.json');
    final playoffsData = jsonDecode(jsonStr) as List;
    final List<MatchInfo> preGameInfo =
        (playoffsData[round - 1]['preGameInfo'] as List)
            .map(
              (e) => MatchInfo.fromJson(
                jsonEncode(e),
              ),
            )
            .toList();
    return preGameInfo;
  }

  Future<List<MatchResult>> getResultForRound({required int round}) async {
    // assuming round starts from 1
    final jsonStr = await rootBundle.loadString('assets/data/playoffs.json');
    final playoffsData = jsonDecode(jsonStr) as List;
    final List<MatchResult> result = (playoffsData[round - 1]['result'] as List)
        .map(
          (e) => MatchResult.fromJson(
            jsonEncode(e),
          ),
        )
        .toList();
    return result;
  }
}
