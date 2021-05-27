//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'class_result.g.dart';

/// Result of a class within a classifier.
///
/// Properties:
/// * [class_] - Name of the class.   Class names are translated in the language defined by the **Accept-Language** request header for the build-in classifier IDs (`default`, `food`, and `explicit`). Class names of custom classifiers are not translated. The response might not be in the specified language when the requested language is not supported or when there is no translation for the class name.
/// * [score] - Confidence score for the property in the range of 0 to 1. A higher score indicates greater likelihood that the class is depicted in the image. The default threshold for returning scores from a classifier is 0.5.
/// * [typeHierarchy] - Knowledge graph of the property. For example, `/fruit/pome/apple/eating apple/Granny Smith`. Included only if identified.
abstract class ClassResult implements Built<ClassResult, ClassResultBuilder> {
    /// Name of the class.   Class names are translated in the language defined by the **Accept-Language** request header for the build-in classifier IDs (`default`, `food`, and `explicit`). Class names of custom classifiers are not translated. The response might not be in the specified language when the requested language is not supported or when there is no translation for the class name.
    @BuiltValueField(wireName: r'class')
    String get class_;

    /// Confidence score for the property in the range of 0 to 1. A higher score indicates greater likelihood that the class is depicted in the image. The default threshold for returning scores from a classifier is 0.5.
    @BuiltValueField(wireName: r'score')
    double get score;

    /// Knowledge graph of the property. For example, `/fruit/pome/apple/eating apple/Granny Smith`. Included only if identified.
    @BuiltValueField(wireName: r'type_hierarchy')
    String? get typeHierarchy;

    ClassResult._();

    static void _initializeBuilder(ClassResultBuilder b) => b;

    factory ClassResult([void updates(ClassResultBuilder b)]) = _$ClassResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ClassResult> get serializer => _$ClassResultSerializer();
}

class _$ClassResultSerializer implements StructuredSerializer<ClassResult> {
    @override
    final Iterable<Type> types = const [ClassResult, _$ClassResult];

    @override
    final String wireName = r'ClassResult';

    @override
    Iterable<Object?> serialize(Serializers serializers, ClassResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'class')
            ..add(serializers.serialize(object.class_,
                specifiedType: const FullType(String)));
        result
            ..add(r'score')
            ..add(serializers.serialize(object.score,
                specifiedType: const FullType(double)));
        if (object.typeHierarchy != null) {
            result
                ..add(r'type_hierarchy')
                ..add(serializers.serialize(object.typeHierarchy,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ClassResult deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassResultBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'score':
                    result.score = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'type_hierarchy':
                    result.typeHierarchy = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

