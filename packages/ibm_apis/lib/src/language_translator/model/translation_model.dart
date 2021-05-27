//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_model.g.dart';

/// Response payload for models.
///
/// Properties:
/// * [modelId] - A globally unique string that identifies the underlying model that is used for translation
/// * [name] - Optional name that can be specified when the model is created.
/// * [source_] - Translation source language code
/// * [target] - Translation target language code
/// * [baseModelId] - Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be an empty string.
/// * [domain] - The domain of the translation model.
/// * [customizable] - Whether this model can be used as a base for customization. Customized models are not further customizable, and some base models are not customizable.
/// * [defaultModel] - Whether or not the model is a default model. A default model is the model for a given language pair that will be used when that language pair is specified in the source and target parameters.
/// * [owner] - Either an empty string, indicating the model is not a custom model, or the ID of the service instance that created the model.
/// * [status] - Availability of a model.
abstract class TranslationModel implements Built<TranslationModel, TranslationModelBuilder> {
    /// A globally unique string that identifies the underlying model that is used for translation
    @BuiltValueField(wireName: r'model_id')
    String get modelId;

    /// Optional name that can be specified when the model is created.
    @BuiltValueField(wireName: r'name')
    String? get name;

    /// Translation source language code
    @BuiltValueField(wireName: r'source')
    String? get source_;

    /// Translation target language code
    @BuiltValueField(wireName: r'target')
    String? get target;

    /// Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be an empty string.
    @BuiltValueField(wireName: r'base_model_id')
    String? get baseModelId;

    /// The domain of the translation model.
    @BuiltValueField(wireName: r'domain')
    String? get domain;

    /// Whether this model can be used as a base for customization. Customized models are not further customizable, and some base models are not customizable.
    @BuiltValueField(wireName: r'customizable')
    bool? get customizable;

    /// Whether or not the model is a default model. A default model is the model for a given language pair that will be used when that language pair is specified in the source and target parameters.
    @BuiltValueField(wireName: r'default_model')
    bool? get defaultModel;

    /// Either an empty string, indicating the model is not a custom model, or the ID of the service instance that created the model.
    @BuiltValueField(wireName: r'owner')
    String? get owner;

    /// Availability of a model.
    @BuiltValueField(wireName: r'status')
    TranslationModelStatusEnum? get status;
    // enum statusEnum {  uploading,  uploaded,  dispatching,  queued,  training,  trained,  publishing,  available,  deleted,  error,  };

    TranslationModel._();

    static void _initializeBuilder(TranslationModelBuilder b) => b;

    factory TranslationModel([void updates(TranslationModelBuilder b)]) = _$TranslationModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<TranslationModel> get serializer => _$TranslationModelSerializer();
}

class _$TranslationModelSerializer implements StructuredSerializer<TranslationModel> {
    @override
    final Iterable<Type> types = const [TranslationModel, _$TranslationModel];

    @override
    final String wireName = r'TranslationModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, TranslationModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'model_id')
            ..add(serializers.serialize(object.modelId,
                specifiedType: const FullType(String)));
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.source_ != null) {
            result
                ..add(r'source')
                ..add(serializers.serialize(object.source_,
                    specifiedType: const FullType(String)));
        }
        if (object.target != null) {
            result
                ..add(r'target')
                ..add(serializers.serialize(object.target,
                    specifiedType: const FullType(String)));
        }
        if (object.baseModelId != null) {
            result
                ..add(r'base_model_id')
                ..add(serializers.serialize(object.baseModelId,
                    specifiedType: const FullType(String)));
        }
        if (object.domain != null) {
            result
                ..add(r'domain')
                ..add(serializers.serialize(object.domain,
                    specifiedType: const FullType(String)));
        }
        if (object.customizable != null) {
            result
                ..add(r'customizable')
                ..add(serializers.serialize(object.customizable,
                    specifiedType: const FullType(bool)));
        }
        if (object.defaultModel != null) {
            result
                ..add(r'default_model')
                ..add(serializers.serialize(object.defaultModel,
                    specifiedType: const FullType(bool)));
        }
        if (object.owner != null) {
            result
                ..add(r'owner')
                ..add(serializers.serialize(object.owner,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(TranslationModelStatusEnum)));
        }
        return result;
    }

    @override
    TranslationModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TranslationModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'model_id':
                    result.modelId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'source':
                    result.source_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'target':
                    result.target = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'base_model_id':
                    result.baseModelId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'domain':
                    result.domain = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'customizable':
                    result.customizable = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'default_model':
                    result.defaultModel = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'owner':
                    result.owner = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(TranslationModelStatusEnum)) as TranslationModelStatusEnum;
                    break;
            }
        }
        return result.build();
    }
}

class TranslationModelStatusEnum extends EnumClass {

  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'uploading')
  static const TranslationModelStatusEnum uploading = _$translationModelStatusEnum_uploading;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'uploaded')
  static const TranslationModelStatusEnum uploaded = _$translationModelStatusEnum_uploaded;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'dispatching')
  static const TranslationModelStatusEnum dispatching = _$translationModelStatusEnum_dispatching;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'queued')
  static const TranslationModelStatusEnum queued = _$translationModelStatusEnum_queued;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'training')
  static const TranslationModelStatusEnum training = _$translationModelStatusEnum_training;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'trained')
  static const TranslationModelStatusEnum trained = _$translationModelStatusEnum_trained;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'publishing')
  static const TranslationModelStatusEnum publishing = _$translationModelStatusEnum_publishing;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'available')
  static const TranslationModelStatusEnum available = _$translationModelStatusEnum_available;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const TranslationModelStatusEnum deleted = _$translationModelStatusEnum_deleted;
  /// Availability of a model.
  @BuiltValueEnumConst(wireName: r'error')
  static const TranslationModelStatusEnum error = _$translationModelStatusEnum_error;

  static Serializer<TranslationModelStatusEnum> get serializer => _$translationModelStatusEnumSerializer;

  const TranslationModelStatusEnum._(String name): super(name);

  static BuiltSet<TranslationModelStatusEnum> get values => _$translationModelStatusEnumValues;
  static TranslationModelStatusEnum valueOf(String name) => _$translationModelStatusEnumValueOf(name);
}

