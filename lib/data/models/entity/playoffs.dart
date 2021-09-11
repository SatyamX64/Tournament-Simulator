library playoffs;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhl/data/models/serializers/serializers.dart';

import 'round.dart';

part 'playoffs.g.dart';

abstract class Playoffs implements Built<Playoffs, PlayoffsBuilder> {
  BuiltList<Round> get rounds;

  Playoffs._();

  factory Playoffs([updates(PlayoffsBuilder b)]) = _$Playoffs;

  String toJson() {
    return json.encode(serializers.serializeWith(Playoffs.serializer, this));
  }

  static Playoffs fromJson(String jsonString) {
    return serializers.deserializeWith(Playoffs.serializer, json.decode(jsonString))!;
  }

  static Serializer<Playoffs> get serializer => _$playoffsSerializer;
}