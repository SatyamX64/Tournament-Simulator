// GENERATED CODE - DO NOT MODIFY BY HAND

part of team_stats;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamStats> _$teamStatsSerializer = new _$TeamStatsSerializer();

class _$TeamStatsSerializer implements StructuredSerializer<TeamStats> {
  @override
  final Iterable<Type> types = const [TeamStats, _$TeamStats];
  @override
  final String wireName = 'TeamStats';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamStats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'team',
      serializers.serialize(object.team, specifiedType: const FullType(Team)),
      'goals',
      serializers.serialize(object.goals, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TeamStats deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamStatsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'team':
          result.team.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team))! as Team);
          break;
        case 'goals':
          result.goals = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamStats extends TeamStats {
  @override
  final Team team;
  @override
  final int goals;

  factory _$TeamStats([void Function(TeamStatsBuilder)? updates]) =>
      (new TeamStatsBuilder()..update(updates)).build();

  _$TeamStats._({required this.team, required this.goals}) : super._() {
    BuiltValueNullFieldError.checkNotNull(team, 'TeamStats', 'team');
    BuiltValueNullFieldError.checkNotNull(goals, 'TeamStats', 'goals');
  }

  @override
  TeamStats rebuild(void Function(TeamStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamStatsBuilder toBuilder() => new TeamStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamStats && team == other.team && goals == other.goals;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, team.hashCode), goals.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamStats')
          ..add('team', team)
          ..add('goals', goals))
        .toString();
  }
}

class TeamStatsBuilder implements Builder<TeamStats, TeamStatsBuilder> {
  _$TeamStats? _$v;

  TeamBuilder? _team;
  TeamBuilder get team => _$this._team ??= new TeamBuilder();
  set team(TeamBuilder? team) => _$this._team = team;

  int? _goals;
  int? get goals => _$this._goals;
  set goals(int? goals) => _$this._goals = goals;

  TeamStatsBuilder();

  TeamStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _team = $v.team.toBuilder();
      _goals = $v.goals;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamStats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamStats;
  }

  @override
  void update(void Function(TeamStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamStats build() {
    _$TeamStats _$result;
    try {
      _$result = _$v ??
          new _$TeamStats._(
              team: team.build(),
              goals: BuiltValueNullFieldError.checkNotNull(
                  goals, 'TeamStats', 'goals'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'team';
        team.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamStats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
