//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ibm_apis/src/visual_recognition/model/classified_image.dart';
import 'package:ibm_apis/src/visual_recognition/model/warning_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classified_images.g.dart';



abstract class ClassifiedImages implements Built<ClassifiedImages, ClassifiedImagesBuilder> {
    /// Number of custom classes identified in the images.
    @BuiltValueField(wireName: r'custom_classes')
    int? get customClasses;

    /// Number of images processed for the API call.
    @BuiltValueField(wireName: r'images_processed')
    int? get imagesProcessed;

    /// Classified images.
    @BuiltValueField(wireName: r'images')
    BuiltList<ClassifiedImage> get images;

    /// Information about what might cause less than optimal output. For example, a request sent with a corrupt .zip file and a list of image URLs will still complete, but does not return the expected output. Not returned when there is no warning.
    @BuiltValueField(wireName: r'warnings')
    BuiltList<WarningInfo>? get warnings;

    ClassifiedImages._();

    static void _initializeBuilder(ClassifiedImagesBuilder b) => b;

    factory ClassifiedImages([void updates(ClassifiedImagesBuilder b)]) = _$ClassifiedImages;

    @BuiltValueSerializer(custom: true)
    static Serializer<ClassifiedImages> get serializer => _$ClassifiedImagesSerializer();
}

class _$ClassifiedImagesSerializer implements StructuredSerializer<ClassifiedImages> {
    @override
    final Iterable<Type> types = const [ClassifiedImages, _$ClassifiedImages];

    @override
    final String wireName = r'ClassifiedImages';

    @override
    Iterable<Object?> serialize(Serializers serializers, ClassifiedImages object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.customClasses != null) {
            result
                ..add(r'custom_classes')
                ..add(serializers.serialize(object.customClasses,
                    specifiedType: const FullType(int)));
        }
        if (object.imagesProcessed != null) {
            result
                ..add(r'images_processed')
                ..add(serializers.serialize(object.imagesProcessed,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'images')
            ..add(serializers.serialize(object.images,
                specifiedType: const FullType(BuiltList, [FullType(ClassifiedImage)])));
        if (object.warnings != null) {
            result
                ..add(r'warnings')
                ..add(serializers.serialize(object.warnings,
                    specifiedType: const FullType(BuiltList, [FullType(WarningInfo)])));
        }
        return result;
    }

    @override
    ClassifiedImages deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassifiedImagesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'custom_classes':
                    result.customClasses = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'images_processed':
                    result.imagesProcessed = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'images':
                    result.images.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ClassifiedImage)])) as BuiltList<ClassifiedImage>);
                    break;
                case r'warnings':
                    result.warnings.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(WarningInfo)])) as BuiltList<WarningInfo>);
                    break;
            }
        }
        return result.build();
    }
}

