//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ibm_apis/src/language_translator/model/translation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_result.g.dart';

/// TranslationResult
///
/// Properties:
/// * [wordCount] - An estimate of the number of words in the input text.
/// * [characterCount] - Number of characters in the input text.
/// * [detectedLanguage] - The language code of the source text if the source language was automatically detected.
/// * [detectedLanguageConfidence] - A score between 0 and 1 indicating the confidence of source language detection. A higher value indicates greater confidence. This is returned only when the service automatically detects the source language.
/// * [translations] - List of translation output in UTF-8, corresponding to the input text entries.
abstract class TranslationResult implements Built<TranslationResult, TranslationResultBuilder> {
    /// An estimate of the number of words in the input text.
    @BuiltValueField(wireName: r'word_count')
    int get wordCount;

    /// Number of characters in the input text.
    @BuiltValueField(wireName: r'character_count')
    int get characterCount;

    /// The language code of the source text if the source language was automatically detected.
    @BuiltValueField(wireName: r'detected_language')
    String? get detectedLanguage;

    /// A score between 0 and 1 indicating the confidence of source language detection. A higher value indicates greater confidence. This is returned only when the service automatically detects the source language.
    @BuiltValueField(wireName: r'detected_language_confidence')
    double? get detectedLanguageConfidence;

    /// List of translation output in UTF-8, corresponding to the input text entries.
    @BuiltValueField(wireName: r'translations')
    BuiltList<Translation> get translations;

    TranslationResult._();

    static void _initializeBuilder(TranslationResultBuilder b) => b;

    factory TranslationResult([void updates(TranslationResultBuilder b)]) = _$TranslationResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<TranslationResult> get serializer => _$TranslationResultSerializer();
}

class _$TranslationResultSerializer implements StructuredSerializer<TranslationResult> {
    @override
    final Iterable<Type> types = const [TranslationResult, _$TranslationResult];

    @override
    final String wireName = r'TranslationResult';

    @override
    Iterable<Object?> serialize(Serializers serializers, TranslationResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'word_count')
            ..add(serializers.serialize(object.wordCount,
                specifiedType: const FullType(int)));
        result
            ..add(r'character_count')
            ..add(serializers.serialize(object.characterCount,
                specifiedType: const FullType(int)));
        if (object.detectedLanguage != null) {
            result
                ..add(r'detected_language')
                ..add(serializers.serialize(object.detectedLanguage,
                    specifiedType: const FullType(String)));
        }
        if (object.detectedLanguageConfidence != null) {
            result
                ..add(r'detected_language_confidence')
                ..add(serializers.serialize(object.detectedLanguageConfidence,
                    specifiedType: const FullType(double)));
        }
        result
            ..add(r'translations')
            ..add(serializers.serialize(object.translations,
                specifiedType: const FullType(BuiltList, [FullType(Translation)])));
        return result;
    }

    @override
    TranslationResult deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TranslationResultBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'word_count':
                    result.wordCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'character_count':
                    result.characterCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'detected_language':
                    result.detectedLanguage = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'detected_language_confidence':
                    result.detectedLanguageConfidence = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'translations':
                    result.translations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Translation)])) as BuiltList<Translation>);
                    break;
            }
        }
        return result.build();
    }
}

