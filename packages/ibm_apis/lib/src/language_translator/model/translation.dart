//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation.g.dart';

/// Translation
///
/// Properties:
/// * [translation] - Translation output in UTF-8.
abstract class Translation implements Built<Translation, TranslationBuilder> {
    /// Translation output in UTF-8.
    @BuiltValueField(wireName: r'translation')
    String get translation;

    Translation._();

    static void _initializeBuilder(TranslationBuilder b) => b;

    factory Translation([void updates(TranslationBuilder b)]) = _$Translation;

    @BuiltValueSerializer(custom: true)
    static Serializer<Translation> get serializer => _$TranslationSerializer();
}

class _$TranslationSerializer implements StructuredSerializer<Translation> {
    @override
    final Iterable<Type> types = const [Translation, _$Translation];

    @override
    final String wireName = r'Translation';

    @override
    Iterable<Object?> serialize(Serializers serializers, Translation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'translation')
            ..add(serializers.serialize(object.translation,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Translation deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TranslationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'translation':
                    result.translation = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

