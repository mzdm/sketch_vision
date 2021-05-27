//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/visual_recognition/model/classifier.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classifiers.g.dart';

/// A container for the list of classifiers.
///
/// Properties:
/// * [classifiers] - List of classifiers.
abstract class Classifiers implements Built<Classifiers, ClassifiersBuilder> {
    /// List of classifiers.
    @BuiltValueField(wireName: r'classifiers')
    BuiltList<Classifier> get classifiers;

    Classifiers._();

    static void _initializeBuilder(ClassifiersBuilder b) => b;

    factory Classifiers([void updates(ClassifiersBuilder b)]) = _$Classifiers;

    @BuiltValueSerializer(custom: true)
    static Serializer<Classifiers> get serializer => _$ClassifiersSerializer();
}

class _$ClassifiersSerializer implements StructuredSerializer<Classifiers> {
    @override
    final Iterable<Type> types = const [Classifiers, _$Classifiers];

    @override
    final String wireName = r'Classifiers';

    @override
    Iterable<Object?> serialize(Serializers serializers, Classifiers object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'classifiers')
            ..add(serializers.serialize(object.classifiers,
                specifiedType: const FullType(BuiltList, [FullType(Classifier)])));
        return result;
    }

    @override
    Classifiers deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassifiersBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'classifiers':
                    result.classifiers.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Classifier)])) as BuiltList<Classifier>);
                    break;
            }
        }
        return result.build();
    }
}

