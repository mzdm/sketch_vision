//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'language.g.dart';

/// Response payload for languages.
///
/// Properties:
/// * [language] - The language code for the language (for example, `af`).
/// * [languageName] - The name of the language in English (for example, `Afrikaans`).
/// * [nativeLanguageName] - The native name of the language (for example, `Afrikaans`).
/// * [countryCode] - The country code for the language (for example, `ZA` for South Africa).
/// * [wordsSeparated] - Indicates whether words of the language are separated by whitespace: `true` if the words are separated; `false` otherwise.
/// * [direction] - Indicates the direction of the language: `right_to_left` or `left_to_right`.
/// * [supportedAsSource] - Indicates whether the language can be used as the source for translation: `true` if the language can be used as the source; `false` otherwise.
/// * [supportedAsTarget] - Indicates whether the language can be used as the target for translation: `true` if the language can be used as the target; `false` otherwise.
/// * [identifiable] - Indicates whether the language supports automatic detection: `true` if the language can be detected automatically; `false` otherwise.
abstract class Language implements Built<Language, LanguageBuilder> {
    /// The language code for the language (for example, `af`).
    @BuiltValueField(wireName: r'language')
    String? get language;

    /// The name of the language in English (for example, `Afrikaans`).
    @BuiltValueField(wireName: r'language_name')
    String? get languageName;

    /// The native name of the language (for example, `Afrikaans`).
    @BuiltValueField(wireName: r'native_language_name')
    String? get nativeLanguageName;

    /// The country code for the language (for example, `ZA` for South Africa).
    @BuiltValueField(wireName: r'country_code')
    String? get countryCode;

    /// Indicates whether words of the language are separated by whitespace: `true` if the words are separated; `false` otherwise.
    @BuiltValueField(wireName: r'words_separated')
    bool? get wordsSeparated;

    /// Indicates the direction of the language: `right_to_left` or `left_to_right`.
    @BuiltValueField(wireName: r'direction')
    String? get direction;

    /// Indicates whether the language can be used as the source for translation: `true` if the language can be used as the source; `false` otherwise.
    @BuiltValueField(wireName: r'supported_as_source')
    bool? get supportedAsSource;

    /// Indicates whether the language can be used as the target for translation: `true` if the language can be used as the target; `false` otherwise.
    @BuiltValueField(wireName: r'supported_as_target')
    bool? get supportedAsTarget;

    /// Indicates whether the language supports automatic detection: `true` if the language can be detected automatically; `false` otherwise.
    @BuiltValueField(wireName: r'identifiable')
    bool? get identifiable;

    Language._();

    static void _initializeBuilder(LanguageBuilder b) => b;

    factory Language([void updates(LanguageBuilder b)]) = _$Language;

    @BuiltValueSerializer(custom: true)
    static Serializer<Language> get serializer => _$LanguageSerializer();
}

class _$LanguageSerializer implements StructuredSerializer<Language> {
    @override
    final Iterable<Type> types = const [Language, _$Language];

    @override
    final String wireName = r'Language';

    @override
    Iterable<Object?> serialize(Serializers serializers, Language object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.language != null) {
            result
                ..add(r'language')
                ..add(serializers.serialize(object.language,
                    specifiedType: const FullType(String)));
        }
        if (object.languageName != null) {
            result
                ..add(r'language_name')
                ..add(serializers.serialize(object.languageName,
                    specifiedType: const FullType(String)));
        }
        if (object.nativeLanguageName != null) {
            result
                ..add(r'native_language_name')
                ..add(serializers.serialize(object.nativeLanguageName,
                    specifiedType: const FullType(String)));
        }
        if (object.countryCode != null) {
            result
                ..add(r'country_code')
                ..add(serializers.serialize(object.countryCode,
                    specifiedType: const FullType(String)));
        }
        if (object.wordsSeparated != null) {
            result
                ..add(r'words_separated')
                ..add(serializers.serialize(object.wordsSeparated,
                    specifiedType: const FullType(bool)));
        }
        if (object.direction != null) {
            result
                ..add(r'direction')
                ..add(serializers.serialize(object.direction,
                    specifiedType: const FullType(String)));
        }
        if (object.supportedAsSource != null) {
            result
                ..add(r'supported_as_source')
                ..add(serializers.serialize(object.supportedAsSource,
                    specifiedType: const FullType(bool)));
        }
        if (object.supportedAsTarget != null) {
            result
                ..add(r'supported_as_target')
                ..add(serializers.serialize(object.supportedAsTarget,
                    specifiedType: const FullType(bool)));
        }
        if (object.identifiable != null) {
            result
                ..add(r'identifiable')
                ..add(serializers.serialize(object.identifiable,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    Language deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LanguageBuilder();

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
                case r'language_name':
                    result.languageName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'native_language_name':
                    result.nativeLanguageName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'country_code':
                    result.countryCode = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'words_separated':
                    result.wordsSeparated = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'direction':
                    result.direction = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'supported_as_source':
                    result.supportedAsSource = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'supported_as_target':
                    result.supportedAsTarget = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'identifiable':
                    result.identifiable = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
            }
        }
        return result.build();
    }
}

