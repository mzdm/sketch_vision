//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identified_language.g.dart';

/// IdentifiedLanguage
///
/// Properties:
/// * [language] - The language code for an identified language.
/// * [confidence] - The confidence score for the identified language.
abstract class IdentifiedLanguage implements Built<IdentifiedLanguage, IdentifiedLanguageBuilder> {
    /// The language code for an identified language.
    @BuiltValueField(wireName: r'language')
    String get language;

    /// The confidence score for the identified language.
    @BuiltValueField(wireName: r'confidence')
    double get confidence;

    IdentifiedLanguage._();

    static void _initializeBuilder(IdentifiedLanguageBuilder b) => b;

    factory IdentifiedLanguage([void updates(IdentifiedLanguageBuilder b)]) = _$IdentifiedLanguage;

    @BuiltValueSerializer(custom: true)
    static Serializer<IdentifiedLanguage> get serializer => _$IdentifiedLanguageSerializer();
}

class _$IdentifiedLanguageSerializer implements StructuredSerializer<IdentifiedLanguage> {
    @override
    final Iterable<Type> types = const [IdentifiedLanguage, _$IdentifiedLanguage];

    @override
    final String wireName = r'IdentifiedLanguage';

    @override
    Iterable<Object?> serialize(Serializers serializers, IdentifiedLanguage object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'language')
            ..add(serializers.serialize(object.language,
                specifiedType: const FullType(String)));
        result
            ..add(r'confidence')
            ..add(serializers.serialize(object.confidence,
                specifiedType: const FullType(double)));
        return result;
    }

    @override
    IdentifiedLanguage deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IdentifiedLanguageBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'language':
                    result.language = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'confidence':
                    result.confidence = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

