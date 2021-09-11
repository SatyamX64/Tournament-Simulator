// GENERATED CODE - DO NOT MODIFY BY HAND

part of match_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchInfo> _$matchInfoSerializer = new _$MatchInfoSerializer();

class _$MatchInfoSerializer implements StructuredSerializer<MatchInfo> {
  @override
  final Iterable<Type> types = const [MatchInfo, _$MatchInfo];
  @override
  final String wireName = 'MatchInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, MatchInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'home',
      serializers.serialize(object.home, specifiedType: const FullType(Team)),
      'away',
      serializers.serialize(object.away, specifiedType: const FullType(Team)),
    ];

    return result;
  }

  @override
  MatchInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'home':
          result.home.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team))! as Team);
          break;
        case 'away':
          result.away.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team))! as Team);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchInfo extends MatchInfo {
  @override
  final Team home;
  @override
  final Team away;

  factory _$MatchInfo([void Function(MatchInfoBuilder)? updates]) =>
      (new MatchInfoBuilder()..update(updates)).build();

  _$MatchInfo._({required this.home, required this.away}) : super._() {
    BuiltValueNullFieldError.checkNotNull(home, 'MatchInfo', 'home');
    BuiltValueNullFieldError.checkNotNull(away, 'MatchInfo', 'away');
  }

  @override
  MatchInfo rebuild(void Function(MatchInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchInfoBuilder toBuilder() => new MatchInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchInfo && home == other.home && away == other.away;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, home.hashCode), away.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchInfo')
          ..add('home', home)
          ..add('away', away))
        .toString();
  }
}

class MatchInfoBuilder implements Builder<MatchInfo, MatchInfoBuilder> {
  _$MatchInfo? _$v;

  TeamBuilder? _home;
  TeamBuilder get home => _$this._home ??= new TeamBuilder();
  set home(TeamBuilder? home) => _$this._home = home;

  TeamBuilder? _away;
  TeamBuilder get away => _$this._away ??= new TeamBuilder();
  set away(TeamBuilder? away) => _$this._away = away;

  MatchInfoBuilder();

  MatchInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _home = $v.home.toBuilder();
      _away = $v.away.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchInfo;
  }

  @override
  void update(void Function(MatchInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchInfo build() {
    _$MatchInfo _$result;
    try {
      _$result =
          _$v ?? new _$MatchInfo._(home: home.build(), away: away.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'home';
        home.build();
        _$failedField = 'away';
        away.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
