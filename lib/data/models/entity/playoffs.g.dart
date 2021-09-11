// GENERATED CODE - DO NOT MODIFY BY HAND

part of playoffs;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Playoffs> _$playoffsSerializer = new _$PlayoffsSerializer();

class _$PlayoffsSerializer implements StructuredSerializer<Playoffs> {
  @override
  final Iterable<Type> types = const [Playoffs, _$Playoffs];
  @override
  final String wireName = 'Playoffs';

  @override
  Iterable<Object?> serialize(Serializers serializers, Playoffs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rounds',
      serializers.serialize(object.rounds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Round)])),
    ];

    return result;
  }

  @override
  Playoffs deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlayoffsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rounds':
          result.rounds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Round)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Playoffs extends Playoffs {
  @override
  final BuiltList<Round> rounds;

  factory _$Playoffs([void Function(PlayoffsBuilder)? updates]) =>
      (new PlayoffsBuilder()..update(updates)).build();

  _$Playoffs._({required this.rounds}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rounds, 'Playoffs', 'rounds');
  }

  @override
  Playoffs rebuild(void Function(PlayoffsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayoffsBuilder toBuilder() => new PlayoffsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Playoffs && rounds == other.rounds;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rounds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Playoffs')..add('rounds', rounds))
        .toString();
  }
}

class PlayoffsBuilder implements Builder<Playoffs, PlayoffsBuilder> {
  _$Playoffs? _$v;

  ListBuilder<Round>? _rounds;
  ListBuilder<Round> get rounds => _$this._rounds ??= new ListBuilder<Round>();
  set rounds(ListBuilder<Round>? rounds) => _$this._rounds = rounds;

  PlayoffsBuilder();

  PlayoffsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rounds = $v.rounds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Playoffs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Playoffs;
  }

  @override
  void update(void Function(PlayoffsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Playoffs build() {
    _$Playoffs _$result;
    try {
      _$result = _$v ?? new _$Playoffs._(rounds: rounds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rounds';
        rounds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Playoffs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
