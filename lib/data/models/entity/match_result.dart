library match_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhl/data/models/serializers/serializers.dart';

import 'entity.dart';

part 'match_result.g.dart';

abstract class MatchResult implements Built<MatchResult, MatchResultBuilder> {
  TeamStats get home;
  TeamStats get away;

  MatchResult._();

  factory MatchResult([updates(MatchResultBuilder b)]) = _$MatchResult;

  String toJson() {
    return json.encode(serializers.serializeWith(MatchResult.serializer, this));
  }

  static MatchResult fromJson(String jsonString) {
    return serializers.deserializeWith(MatchResult.serializer, json.decode(jsonString))!;
  }

  static Serializer<MatchResult> get serializer => _$matchResultSerializer;
}