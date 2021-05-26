//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/src/visual_recognition/model/model_class.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classifier.g.dart';



abstract class Classifier implements Built<Classifier, ClassifierBuilder> {
    /// ID of a classifier identified in the image.
    @BuiltValueField(wireName: r'classifier_id')
    String get classifierId;

    /// Name of the classifier.
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Unique ID of the account who owns the classifier. Might not be returned by some requests.
    @BuiltValueField(wireName: r'owner')
    String? get owner;

    /// Training status of classifier.
    @BuiltValueField(wireName: r'status')
    ClassifierStatusEnum? get status;
    // enum statusEnum {  ready,  training,  retraining,  failed,  };

    /// Whether the classifier can be downloaded as a Core ML model after the training status is `ready`.
    @BuiltValueField(wireName: r'core_ml_enabled')
    bool? get coreMlEnabled;

    /// If classifier training has failed, this field might explain why.
    @BuiltValueField(wireName: r'explanation')
    String? get explanation;

    /// Date and time in Coordinated Universal Time (UTC) that the classifier was created.
    @BuiltValueField(wireName: r'created')
    DateTime? get created;

    /// Classes that define a classifier.
    @BuiltValueField(wireName: r'classes')
    BuiltList<ModelClass>? get classes;

    /// Date and time in Coordinated Universal Time (UTC) that the classifier was updated. Might not be returned by some requests. Identical to `updated` and retained for backward compatibility.
    @BuiltValueField(wireName: r'retrained')
    DateTime? get retrained;

    /// Date and time in Coordinated Universal Time (UTC) that the classifier was most recently updated. The field matches either `retrained` or `created`. Might not be returned by some requests.
    @BuiltValueField(wireName: r'updated')
    DateTime? get updated;

    Classifier._();

    static void _initializeBuilder(ClassifierBuilder b) => b;

    factory Classifier([void updates(ClassifierBuilder b)]) = _$Classifier;

    @BuiltValueSerializer(custom: true)
    static Serializer<Classifier> get serializer => _$ClassifierSerializer();
}

class _$ClassifierSerializer implements StructuredSerializer<Classifier> {
    @override
    final Iterable<Type> types = const [Classifier, _$Classifier];

    @override
    final String wireName = r'Classifier';

    @override
    Iterable<Object?> serialize(Serializers serializers, Classifier object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'classifier_id')
            ..add(serializers.serialize(object.classifierId,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
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
                    specifiedType: const FullType(ClassifierStatusEnum)));
        }
        if (object.coreMlEnabled != null) {
            result
                ..add(r'core_ml_enabled')
                ..add(serializers.serialize(object.coreMlEnabled,
                    specifiedType: const FullType(bool)));
        }
        if (object.explanation != null) {
            result
                ..add(r'explanation')
                ..add(serializers.serialize(object.explanation,
                    specifiedType: const FullType(String)));
        }
        if (object.created != null) {
            result
                ..add(r'created')
                ..add(serializers.serialize(object.created,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.classes != null) {
            result
                ..add(r'classes')
                ..add(serializers.serialize(object.classes,
                    specifiedType: const FullType(BuiltList, [FullType(ModelClass)])));
        }
        if (object.retrained != null) {
            result
                ..add(r'retrained')
                ..add(serializers.serialize(object.retrained,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.updated != null) {
            result
                ..add(r'updated')
                ..add(serializers.serialize(object.updated,
                    specifiedType: const FullType(DateTime)));
        }
        return result;
    }

    @override
    Classifier deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassifierBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'classifier_id':
                    result.classifierId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'owner':
                    result.owner = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(ClassifierStatusEnum)) as ClassifierStatusEnum;
                    break;
                case r'core_ml_enabled':
                    result.coreMlEnabled = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'explanation':
                    result.explanation = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'created':
                    result.created = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'classes':
                    result.classes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ModelClass)])) as BuiltList<ModelClass>);
                    break;
                case r'retrained':
                    result.retrained = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'updated':
                    result.updated = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
            }
        }
        return result.build();
    }
}

class ClassifierStatusEnum extends EnumClass {

  /// Training status of classifier.
  @BuiltValueEnumConst(wireName: r'ready')
  static const ClassifierStatusEnum ready = _$classifierStatusEnum_ready;
  /// Training status of classifier.
  @BuiltValueEnumConst(wireName: r'training')
  static const ClassifierStatusEnum training = _$classifierStatusEnum_training;
  /// Training status of classifier.
  @BuiltValueEnumConst(wireName: r'retraining')
  static const ClassifierStatusEnum retraining = _$classifierStatusEnum_retraining;
  /// Training status of classifier.
  @BuiltValueEnumConst(wireName: r'failed')
  static const ClassifierStatusEnum failed = _$classifierStatusEnum_failed;

  static Serializer<ClassifierStatusEnum> get serializer => _$classifierStatusEnumSerializer;

  const ClassifierStatusEnum._(String name): super(name);

  static BuiltSet<ClassifierStatusEnum> get values => _$classifierStatusEnumValues;
  static ClassifierStatusEnum valueOf(String name) => _$classifierStatusEnumValueOf(name);
}

