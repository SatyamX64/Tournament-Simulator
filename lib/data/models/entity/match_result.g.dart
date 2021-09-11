// GENERATED CODE - DO NOT MODIFY BY HAND

part of match_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchResult> _$matchResultSerializer = new _$MatchResultSerializer();

class _$MatchResultSerializer implements StructuredSerializer<MatchResult> {
  @override
  final Iterable<Type> types = const [MatchResult, _$MatchResult];
  @override
  final String wireName = 'MatchResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, MatchResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'home',
      serializers.serialize(object.home,
          specifiedType: const FullType(TeamStats)),
      'away',
      serializers.serialize(object.away,
          specifiedType: const FullType(TeamStats)),
    ];

    return result;
  }

  @override
  MatchResult deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'home':
          result.home.replace(serializers.deserialize(value,
              specifiedType: const FullType(TeamStats))! as TeamStats);
          break;
        case 'away':
          result.away.replace(serializers.deserialize(value,
              specifiedType: const FullType(TeamStats))! as TeamStats);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchResult extends MatchResult {
  @override
  final TeamStats home;
  @override
  final TeamStats away;

  factory _$MatchResult([void Function(MatchResultBuilder)? updates]) =>
      (new MatchResultBuilder()..update(updates)).build();

  _$MatchResult._({required this.home, required this.away}) : super._() {
    BuiltValueNullFieldError.checkNotNull(home, 'MatchResult', 'home');
    BuiltValueNullFieldError.checkNotNull(away, 'MatchResult', 'away');
  }

  @override
  MatchResult rebuild(void Function(MatchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchResultBuilder toBuilder() => new MatchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchResult && home == other.home && away == other.away;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, home.hashCode), away.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchResult')
          ..add('home', home)
          ..add('away', away))
        .toString();
  }
}

class MatchResultBuilder implements Builder<MatchResult, MatchResultBuilder> {
  _$MatchResult? _$v;

  TeamStatsBuilder? _home;
  TeamStatsBuilder get home => _$this._home ??= new TeamStatsBuilder();
  set home(TeamStatsBuilder? home) => _$this._home = home;

  TeamStatsBuilder? _away;
  TeamStatsBuilder get away => _$this._away ??= new TeamStatsBuilder();
  set away(TeamStatsBuilder? away) => _$this._away = away;

  MatchResultBuilder();

  MatchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _home = $v.home.toBuilder();
      _away = $v.away.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchResult;
  }

  @override
  void update(void Function(MatchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchResult build() {
    _$MatchResult _$result;
    try {
      _$result =
          _$v ?? new _$MatchResult._(home: home.build(), away: away.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'home';
        home.build();
        _$failedField = 'away';
        away.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
