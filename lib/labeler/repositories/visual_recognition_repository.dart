import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart' as dio;
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/config.dart';
import 'package:sketch_vision_app/labeler/data/fake_response.dart';

const _authName = 'IAM';
const _authUsername = 'apikey';

class VisualRecogRepository {
  VisualRecogRepository()
      : ibmApi = IbmVisualRecognition(
          interceptors: [
            BasicAuthInterceptor(),
          ],
        )..setBasicAuth(
            _authName,
            _authUsername,
            EnvConfig.IBM_VISUAL_RECOGNITION_API_KEY,
          );

  final IbmVisualRecognition ibmApi;

  Future<dio.Response<ClassifiedImages>> classifyImage(
    Uint8List imageBytes,
  ) async {
    final response = await ibmApi.getGeneralApi().classify(
          imagesFile: dio.MultipartFile.fromBytes(
            imageBytes,
            filename: 'example',
          ),
          version: '2018-03-19',
          threshold: 0.0,
        );

    return response;
  }

  ClassifiedImage loadFakeClassificationData() {
    return standardSerializers
        .deserializeWith(
          ClassifiedImages.serializer,
          json.decode(testDataLabels),
        )!
        .images
        .first;
  }
}
