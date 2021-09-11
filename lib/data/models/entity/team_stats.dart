library team_stats;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhl/data/models/serializers/serializers.dart';

import 'team.dart';

part 'team_stats.g.dart';

abstract class TeamStats implements Built<TeamStats, TeamStatsBuilder> {
  Team get team;
  int get goals;

  TeamStats._();

  factory TeamStats([updates(TeamStatsBuilder b)]) = _$TeamStats;

  String toJson() {
    return json.encode(serializers.serializeWith(TeamStats.serializer, this));
  }

  static TeamStats fromJson(String jsonString) {
    return serializers.deserializeWith(TeamStats.serializer, json.decode(jsonString))!;
  }

  static Serializer<TeamStats> get serializer => _$teamStatsSerializer;
}