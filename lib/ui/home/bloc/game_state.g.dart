// GENERATED CODE - DO NOT MODIFY BY HAND

part of game_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GameState extends GameState {
  @override
  final BuiltList<List<MatchResult>> completedRoundsData;
  @override
  final List<MatchInfo>? currentRoundInfo;
  @override
  final int currentRound;
  @override
  final bool isLoading;

  factory _$GameState([void Function(GameStateBuilder)? updates]) =>
      (new GameStateBuilder()..update(updates)).build();

  _$GameState._(
      {required this.completedRoundsData,
      this.currentRoundInfo,
      required this.currentRound,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        completedRoundsData, 'GameState', 'completedRoundsData');
    BuiltValueNullFieldError.checkNotNull(
        currentRound, 'GameState', 'currentRound');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'GameState', 'isLoading');
  }

  @override
  GameState rebuild(void Function(GameStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameStateBuilder toBuilder() => new GameStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameState &&
        completedRoundsData == other.completedRoundsData &&
        currentRoundInfo == other.currentRoundInfo &&
        currentRound == other.currentRound &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, completedRoundsData.hashCode),
                currentRoundInfo.hashCode),
            currentRound.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameState')
          ..add('completedRoundsData', completedRoundsData)
          ..add('currentRoundInfo', currentRoundInfo)
          ..add('currentRound', currentRound)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class GameStateBuilder implements Builder<GameState, GameStateBuilder> {
  _$GameState? _$v;

  ListBuilder<List<MatchResult>>? _completedRoundsData;
  ListBuilder<List<MatchResult>> get completedRoundsData =>
      _$this._completedRoundsData ??= new ListBuilder<List<MatchResult>>();
  set completedRoundsData(
          ListBuilder<List<MatchResult>>? completedRoundsData) =>
      _$this._completedRoundsData = completedRoundsData;

  List<MatchInfo>? _currentRoundInfo;
  List<MatchInfo>? get currentRoundInfo => _$this._currentRoundInfo;
  set currentRoundInfo(List<MatchInfo>? currentRoundInfo) =>
      _$this._currentRoundInfo = currentRoundInfo;

  int? _currentRound;
  int? get currentRound => _$this._currentRound;
  set currentRound(int? currentRound) => _$this._currentRound = currentRound;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  GameStateBuilder();

  GameStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completedRoundsData = $v.completedRoundsData.toBuilder();
      _currentRoundInfo = $v.currentRoundInfo;
      _currentRound = $v.currentRound;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameState;
  }

  @override
  void update(void Function(GameStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GameState build() {
    _$GameState _$result;
    try {
      _$result = _$v ??
          new _$GameState._(
              completedRoundsData: completedRoundsData.build(),
              currentRoundInfo: currentRoundInfo,
              currentRound: BuiltValueNullFieldError.checkNotNull(
                  currentRound, 'GameState', 'currentRound'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'GameState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'completedRoundsData';
        completedRoundsData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GameState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
