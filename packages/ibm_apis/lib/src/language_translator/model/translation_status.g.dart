// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TranslationStatus _$processing = const TranslationStatus._('processing');
const TranslationStatus _$available = const TranslationStatus._('available');
const TranslationStatus _$failed = const TranslationStatus._('failed');

TranslationStatus _$valueOf(String name) {
  switch (name) {
    case 'processing':
      return _$processing;
    case 'available':
      return _$available;
    case 'failed':
      return _$failed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TranslationStatus> _$values =
    new BuiltSet<TranslationStatus>(const <TranslationStatus>[
  _$processing,
  _$available,
  _$failed,
]);

class _$TranslationStatusMeta {
  const _$TranslationStatusMeta();
  TranslationStatus get processing => _$processing;
  TranslationStatus get available => _$available;
  TranslationStatus get failed => _$failed;
  TranslationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<TranslationStatus> get values => _$values;
}

abstract class _$TranslationStatusMixin {
  // ignore: non_constant_identifier_names
  _$TranslationStatusMeta get TranslationStatus =>
      const _$TranslationStatusMeta();
}

Serializer<TranslationStatus> _$translationStatusSerializer =
    new _$TranslationStatusSerializer();

class _$TranslationStatusSerializer
    implements PrimitiveSerializer<TranslationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'processing': 'processing',
    'available': 'available',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'processing': 'processing',
    'available': 'available',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[TranslationStatus];
  @override
  final String wireName = 'TranslationStatus';

  @override
  Object serialize(Serializers serializers, TranslationStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TranslationStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TranslationStatus.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
