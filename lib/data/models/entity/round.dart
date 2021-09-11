library round;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/async_serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhl/data/models/serializers/serializers.dart';

import 'entity.dart';

part 'round.g.dart';

abstract class Round implements Built<Round, RoundBuilder> {
  BuiltList<MatchInfo> get preGameInfo;
  BuiltList<MatchResult> get results;

  Round._();

  factory Round([updates(RoundBuilder b)]) = _$Round;

  String toJson() {
    return json.encode(serializers.serializeWith(Round.serializer, this));
  }

  static Round fromJson(String jsonString) {
    return serializers.deserializeWith(
        Round.serializer, json.decode(jsonString))!;
  }

  static Serializer<Round> get serializer => _$roundSerializer;
}
