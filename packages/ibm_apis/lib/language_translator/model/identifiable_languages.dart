//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ibm_apis/language_translator/model/identifiable_language.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identifiable_languages.g.dart';

/// IdentifiableLanguages
///
/// Properties:
/// * [languages] - A list of all languages that the service can identify.
abstract class IdentifiableLanguages implements Built<IdentifiableLanguages, IdentifiableLanguagesBuilder> {
    /// A list of all languages that the service can identify.
    @BuiltValueField(wireName: r'languages')
    BuiltList<IdentifiableLanguage> get languages;

    IdentifiableLanguages._();

    static void _initializeBuilder(IdentifiableLanguagesBuilder b) => b;

    factory IdentifiableLanguages([void updates(IdentifiableLanguagesBuilder b)]) = _$IdentifiableLanguages;

    @BuiltValueSerializer(custom: true)
    static Serializer<IdentifiableLanguages> get serializer => _$IdentifiableLanguagesSerializer();
}

class _$IdentifiableLanguagesSerializer implements StructuredSerializer<IdentifiableLanguages> {
    @override
    final Iterable<Type> types = const [IdentifiableLanguages, _$IdentifiableLanguages];

    @override
    final String wireName = r'IdentifiableLanguages';

    @override
    Iterable<Object?> serialize(Serializers serializers, IdentifiableLanguages object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'languages')
            ..add(serializers.serialize(object.languages,
                specifiedType: const FullType(BuiltList, [FullType(IdentifiableLanguage)])));
        return result;
    }

    @override
    IdentifiableLanguages deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IdentifiableLanguagesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'languages':
                    result.languages.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(IdentifiableLanguage)])) as BuiltList<IdentifiableLanguage>);
                    break;
            }
        }
        return result.build();
    }
}

