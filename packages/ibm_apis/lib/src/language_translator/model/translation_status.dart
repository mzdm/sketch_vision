//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_status.g.dart';

class TranslationStatus extends EnumClass {

  /// The status of the translation job associated with a submitted document
  @BuiltValueEnumConst(wireName: r'processing')
  static const TranslationStatus processing = _$processing;
  /// The status of the translation job associated with a submitted document
  @BuiltValueEnumConst(wireName: r'available')
  static const TranslationStatus available = _$available;
  /// The status of the translation job associated with a submitted document
  @BuiltValueEnumConst(wireName: r'failed')
  static const TranslationStatus failed = _$failed;

  static Serializer<TranslationStatus> get serializer => _$translationStatusSerializer;

  const TranslationStatus._(String name): super(name);

  static BuiltSet<TranslationStatus> get values => _$values;
  static TranslationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TranslationStatusMixin = Object with _$TranslationStatusMixin;

