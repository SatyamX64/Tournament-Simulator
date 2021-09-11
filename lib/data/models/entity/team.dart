library team;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhl/data/models/serializers/serializers.dart';


part 'team.g.dart';

abstract class Team implements Built<Team, TeamBuilder> {
  String get image_path;
  String get name;

  Team._();

  factory Team([updates(TeamBuilder b)]) = _$Team;

  String toJson() {
    return json.encode(serializers.serializeWith(Team.serializer, this));
  }

  static Team fromJson(String jsonString) {
    return serializers.deserializeWith(
        Team.serializer, json.decode(jsonString))!;
  }

  static Serializer<Team> get serializer => _$teamSerializer;
}
