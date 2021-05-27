//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/language_translator/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'languages.g.dart';

/// The response type for listing supported languages.
///
/// Properties:
/// * [languages] - An array of supported languages with information about each language.
abstract class Languages implements Built<Languages, LanguagesBuilder> {
    /// An array of supported languages with information about each language.
    @BuiltValueField(wireName: r'languages')
    BuiltList<Language> get languages;

    Languages._();

    static void _initializeBuilder(LanguagesBuilder b) => b;

    factory Languages([void updates(LanguagesBuilder b)]) = _$Languages;

    @BuiltValueSerializer(custom: true)
    static Serializer<Languages> get serializer => _$LanguagesSerializer();
}

class _$LanguagesSerializer implements StructuredSerializer<Languages> {
    @override
    final Iterable<Type> types = const [Languages, _$Languages];

    @override
    final String wireName = r'Languages';

    @override
    Iterable<Object?> serialize(Serializers serializers, Languages object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'languages')
            ..add(serializers.serialize(object.languages,
                specifiedType: const FullType(BuiltList, [FullType(Language)])));
        return result;
    }

    @override
    Languages deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LanguagesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'languages':
                    result.languages.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Language)])) as BuiltList<Language>);
                    break;
            }
        }
        return result.build();
    }
}

