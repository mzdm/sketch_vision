// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WarningInfo extends WarningInfo {
  @override
  final String warningId;
  @override
  final String description;

  factory _$WarningInfo([void Function(WarningInfoBuilder)? updates]) =>
      (new WarningInfoBuilder()..update(updates)).build();

  _$WarningInfo._({required this.warningId, required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        warningId, 'WarningInfo', 'warningId');
    BuiltValueNullFieldError.checkNotNull(
        description, 'WarningInfo', 'description');
  }

  @override
  WarningInfo rebuild(void Function(WarningInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarningInfoBuilder toBuilder() => new WarningInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WarningInfo &&
        warningId == other.warningId &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, warningId.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WarningInfo')
          ..add('warningId', warningId)
          ..add('description', description))
        .toString();
  }
}

class WarningInfoBuilder implements Builder<WarningInfo, WarningInfoBuilder> {
  _$WarningInfo? _$v;

  String? _warningId;
  String? get warningId => _$this._warningId;
  set warningId(String? warningId) => _$this._warningId = warningId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  WarningInfoBuilder() {
    WarningInfo._initializeBuilder(this);
  }

  WarningInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _warningId = $v.warningId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WarningInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WarningInfo;
  }

  @override
  void update(void Function(WarningInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WarningInfo build() {
    final _$result = _$v ??
        new _$WarningInfo._(
            warningId: BuiltValueNullFieldError.checkNotNull(
                warningId, 'WarningInfo', 'warningId'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'WarningInfo', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
