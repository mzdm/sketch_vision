//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:ibm_apis/src/visual_recognition/date_serializer.dart';
import 'package:ibm_apis/src/visual_recognition/model/date.dart';

import 'package:ibm_apis/src/visual_recognition/model/class_result.dart';
import 'package:ibm_apis/src/visual_recognition/model/classified_image.dart';
import 'package:ibm_apis/src/visual_recognition/model/classified_images.dart';
import 'package:ibm_apis/src/visual_recognition/model/classifier.dart';
import 'package:ibm_apis/src/visual_recognition/model/classifier_result.dart';
import 'package:ibm_apis/src/visual_recognition/model/classifiers.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_html.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_info.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_response.dart';
import 'package:ibm_apis/src/visual_recognition/model/model_class.dart';
import 'package:ibm_apis/src/visual_recognition/model/warning_info.dart';

part 'serializers.g.dart';

@SerializersFor([
  ClassResult,
  ClassifiedImage,
  ClassifiedImages,
  Classifier,
  ClassifierResult,
  Classifiers,
  ErrorHTML,
  ErrorInfo,
  ErrorResponse,
  ModelClass,
  WarningInfo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
