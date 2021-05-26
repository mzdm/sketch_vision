//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_info.dart';
import 'package:ibm_apis/src/visual_recognition/model/classifier_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classified_image.g.dart';



abstract class ClassifiedImage implements Built<ClassifiedImage, ClassifiedImageBuilder> {
    /// Source of the image before any redirects. Not returned when the image is uploaded.
    @BuiltValueField(wireName: r'source_url')
    String? get sourceUrl;

    /// Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded.
    @BuiltValueField(wireName: r'resolved_url')
    String? get resolvedUrl;

    /// Relative path of the image file if uploaded directly. Not returned when the image is passed by URL.
    @BuiltValueField(wireName: r'image')
    String? get image;

    @BuiltValueField(wireName: r'error')
    ErrorInfo? get error;

    /// The classifiers
    @BuiltValueField(wireName: r'classifiers')
    BuiltList<ClassifierResult> get classifiers;

    ClassifiedImage._();

    static void _initializeBuilder(ClassifiedImageBuilder b) => b;

    factory ClassifiedImage([void updates(ClassifiedImageBuilder b)]) = _$ClassifiedImage;

    @BuiltValueSerializer(custom: true)
    static Serializer<ClassifiedImage> get serializer => _$ClassifiedImageSerializer();
}

class _$ClassifiedImageSerializer implements StructuredSerializer<ClassifiedImage> {
    @override
    final Iterable<Type> types = const [ClassifiedImage, _$ClassifiedImage];

    @override
    final String wireName = r'ClassifiedImage';

    @override
    Iterable<Object?> serialize(Serializers serializers, ClassifiedImage object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.sourceUrl != null) {
            result
                ..add(r'source_url')
                ..add(serializers.serialize(object.sourceUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.resolvedUrl != null) {
            result
                ..add(r'resolved_url')
                ..add(serializers.serialize(object.resolvedUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.image != null) {
            result
                ..add(r'image')
                ..add(serializers.serialize(object.image,
                    specifiedType: const FullType(String)));
        }
        if (object.error != null) {
            result
                ..add(r'error')
                ..add(serializers.serialize(object.error,
                    specifiedType: const FullType(ErrorInfo)));
        }
        result
            ..add(r'classifiers')
            ..add(serializers.serialize(object.classifiers,
                specifiedType: const FullType(BuiltList, [FullType(ClassifierResult)])));
        return result;
    }

    @override
    ClassifiedImage deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassifiedImageBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'source_url':
                    result.sourceUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'resolved_url':
                    result.resolvedUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'image':
                    result.image = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'error':
                    result.error.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ErrorInfo)) as ErrorInfo);
                    break;
                case r'classifiers':
                    result.classifiers.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ClassifierResult)])) as BuiltList<ClassifierResult>);
                    break;
            }
        }
        return result.build();
    }
}

