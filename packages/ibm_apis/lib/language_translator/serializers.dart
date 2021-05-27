//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:ibm_apis/language_translator/date_serializer.dart';
import 'package:ibm_apis/language_translator/model/date.dart';

import 'package:ibm_apis/language_translator/model/delete_model_result.dart';
import 'package:ibm_apis/language_translator/model/document_list.dart';
import 'package:ibm_apis/language_translator/model/document_status.dart';
import 'package:ibm_apis/language_translator/model/error_response.dart';
import 'package:ibm_apis/language_translator/model/identifiable_language.dart';
import 'package:ibm_apis/language_translator/model/identifiable_languages.dart';
import 'package:ibm_apis/language_translator/model/identified_language.dart';
import 'package:ibm_apis/language_translator/model/identified_languages.dart';
import 'package:ibm_apis/language_translator/model/language.dart';
import 'package:ibm_apis/language_translator/model/languages.dart';
import 'package:ibm_apis/language_translator/model/translate_request.dart';
import 'package:ibm_apis/language_translator/model/translation.dart';
import 'package:ibm_apis/language_translator/model/translation_model.dart';
import 'package:ibm_apis/language_translator/model/translation_models.dart';
import 'package:ibm_apis/language_translator/model/translation_result.dart';
import 'package:ibm_apis/language_translator/model/translation_status.dart';

part 'serializers.g.dart';

@SerializersFor([
  DeleteModelResult,
  DocumentList,
  DocumentStatus,
  ErrorResponse,
  IdentifiableLanguage,
  IdentifiableLanguages,
  IdentifiedLanguage,
  IdentifiedLanguages,
  Language,
  Languages,
  TranslateRequest,
  Translation,
  TranslationModel,
  TranslationModels,
  TranslationResult,
  TranslationStatus,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
