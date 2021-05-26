//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/src/visual_recognition/model/class_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classifier_result.g.dart';



abstract class ClassifierResult implements Built<ClassifierResult, ClassifierResultBuilder> {
    /// Name of the classifier.
    @BuiltValueField(wireName: r'name')
    String get name;

    /// ID of a classifier identified in the image.
    @BuiltValueField(wireName: r'classifier_id')
    String get classifierId;

    /// Classes within the classifier.
    @BuiltValueField(wireName: r'classes')
    BuiltList<ClassResult> get classes;

    ClassifierResult._();

    static void _initializeBuilder(ClassifierResultBuilder b) => b;

    factory ClassifierResult([void updates(ClassifierResultBuilder b)]) = _$ClassifierResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ClassifierResult> get serializer => _$ClassifierResultSerializer();
}

class _$ClassifierResultSerializer implements StructuredSerializer<ClassifierResult> {
    @override
    final Iterable<Type> types = const [ClassifierResult, _$ClassifierResult];

    @override
    final String wireName = r'ClassifierResult';

    @override
    Iterable<Object?> serialize(Serializers serializers, ClassifierResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'classifier_id')
            ..add(serializers.serialize(object.classifierId,
                specifiedType: const FullType(String)));
        result
            ..add(r'classes')
            ..add(serializers.serialize(object.classes,
                specifiedType: const FullType(BuiltList, [FullType(ClassResult)])));
        return result;
    }

    @override
    ClassifierResult deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassifierResultBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'classifier_id':
                    result.classifierId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'classes':
                    result.classes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ClassResult)])) as BuiltList<ClassResult>);
                    break;
            }
        }
        return result.build();
    }
}

