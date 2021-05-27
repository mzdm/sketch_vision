//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identifiable_language.g.dart';

/// IdentifiableLanguage
///
/// Properties:
/// * [language] - The language code for an identifiable language.
/// * [name] - The name of the identifiable language.
abstract class IdentifiableLanguage implements Built<IdentifiableLanguage, IdentifiableLanguageBuilder> {
    /// The language code for an identifiable language.
    @BuiltValueField(wireName: r'language')
    String get language;

    /// The name of the identifiable language.
    @BuiltValueField(wireName: r'name')
    String get name;

    IdentifiableLanguage._();

    static void _initializeBuilder(IdentifiableLanguageBuilder b) => b;

    factory IdentifiableLanguage([void updates(IdentifiableLanguageBuilder b)]) = _$IdentifiableLanguage;

    @BuiltValueSerializer(custom: true)
    static Serializer<IdentifiableLanguage> get serializer => _$IdentifiableLanguageSerializer();
}

class _$IdentifiableLanguageSerializer implements StructuredSerializer<IdentifiableLanguage> {
    @override
    final Iterable<Type> types = const [IdentifiableLanguage, _$IdentifiableLanguage];

    @override
    final String wireName = r'IdentifiableLanguage';

    @override
    Iterable<Object?> serialize(Serializers serializers, IdentifiableLanguage object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'language')
            ..add(serializers.serialize(object.language,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    IdentifiableLanguage deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IdentifiableLanguageBuilder();

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
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

