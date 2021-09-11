library match_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhl/data/models/serializers/serializers.dart';

import 'team.dart';

part 'match_info.g.dart';

abstract class MatchInfo implements Built<MatchInfo, MatchInfoBuilder> {
  Team get home;
  Team get away;

  MatchInfo._();

  factory MatchInfo([updates(MatchInfoBuilder b)]) = _$MatchInfo;

  String toJson() {
    return json.encode(serializers.serializeWith(MatchInfo.serializer, this));
  }

  static MatchInfo fromJson(String jsonString) {
    return serializers.deserializeWith(MatchInfo.serializer, json.decode(jsonString))!;
  }

  static Serializer<MatchInfo> get serializer => _$matchInfoSerializer;
}