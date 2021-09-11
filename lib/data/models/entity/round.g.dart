// GENERATED CODE - DO NOT MODIFY BY HAND

part of round;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Round> _$roundSerializer = new _$RoundSerializer();

class _$RoundSerializer implements StructuredSerializer<Round> {
  @override
  final Iterable<Type> types = const [Round, _$Round];
  @override
  final String wireName = 'Round';

  @override
  Iterable<Object?> serialize(Serializers serializers, Round object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'preGameInfo',
      serializers.serialize(object.preGameInfo,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MatchInfo)])),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MatchResult)])),
    ];

    return result;
  }

  @override
  Round deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoundBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'preGameInfo':
          result.preGameInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MatchInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MatchResult)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Round extends Round {
  @override
  final BuiltList<MatchInfo> preGameInfo;
  @override
  final BuiltList<MatchResult> results;

  factory _$Round([void Function(RoundBuilder)? updates]) =>
      (new RoundBuilder()..update(updates)).build();

  _$Round._({required this.preGameInfo, required this.results}) : super._() {
    BuiltValueNullFieldError.checkNotNull(preGameInfo, 'Round', 'preGameInfo');
    BuiltValueNullFieldError.checkNotNull(results, 'Round', 'results');
  }

  @override
  Round rebuild(void Function(RoundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoundBuilder toBuilder() => new RoundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Round &&
        preGameInfo == other.preGameInfo &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, preGameInfo.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Round')
          ..add('preGameInfo', preGameInfo)
          ..add('results', results))
        .toString();
  }
}

class RoundBuilder implements Builder<Round, RoundBuilder> {
  _$Round? _$v;

  ListBuilder<MatchInfo>? _preGameInfo;
  ListBuilder<MatchInfo> get preGameInfo =>
      _$this._preGameInfo ??= new ListBuilder<MatchInfo>();
  set preGameInfo(ListBuilder<MatchInfo>? preGameInfo) =>
      _$this._preGameInfo = preGameInfo;

  ListBuilder<MatchResult>? _results;
  ListBuilder<MatchResult> get results =>
      _$this._results ??= new ListBuilder<MatchResult>();
  set results(ListBuilder<MatchResult>? results) => _$this._results = results;

  RoundBuilder();

  RoundBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preGameInfo = $v.preGameInfo.toBuilder();
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Round other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Round;
  }

  @override
  void update(void Function(RoundBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Round build() {
    _$Round _$result;
    try {
      _$result = _$v ??
          new _$Round._(
              preGameInfo: preGameInfo.build(), results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'preGameInfo';
        preGameInfo.build();
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Round', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
