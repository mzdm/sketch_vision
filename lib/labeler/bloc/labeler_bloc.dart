import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:ibm_apis/visual_recognition/model/classified_images.dart';
import 'package:sketch_vision_app/app/config.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/labeler/data/fake_response.dart';

part 'labeler_event.dart';

part 'labeler_state.dart';

const _authName = 'IAM';
const _authUsername = 'apikey';

class LabelerBloc extends Bloc<LabelerEvent, LabelerState> {
  LabelerBloc({
    required this.imagePickerBloc,
  })  : ibmVisualRecognition = IbmVisualRecognition(
          interceptors: [
            BasicAuthInterceptor(),
          ],
        ),
        super(LabelerInitial()) {
    ibmVisualRecognition.setBasicAuth(
      _authName,
      _authUsername,
      'API_KEY',
    );
  }

  final ImagePickerCubit imagePickerBloc;
  final IbmVisualRecognition ibmVisualRecognition;

  @override
  Stream<LabelerState> mapEventToState(
    LabelerEvent event,
  ) async* {
    if (event is LabelerClassified) {
      final imagePickerState = imagePickerBloc.state;
      if (imagePickerState is ImagePickerCropFinished) {
        yield LabelerLoading();

        ClassifiedImages? classifiedImages;
        final imageBytes = imagePickerState.imageBytes;

        if (!Config.testMode) {
          try {
            final response =
                await ibmVisualRecognition.getGeneralApi().classify(
                      imagesFile: dio.MultipartFile.fromBytes(
                        imageBytes,
                        filename: 'example',
                      ),
                      version: '2018-03-19',
                      threshold: 0.0,
                    );
            classifiedImages = response.data;
          } catch (e) {
            log(e.toString());
            final errorMessage = e is dio.DioError ? e.message : e.toString();
            yield LabelerError(errorMessage);
            await Future.delayed(const Duration(seconds: 6));
          }
        }

        if (classifiedImages != null) {
          log(classifiedImages.toString());
          final images = classifiedImages.images;
          if (images.isNotEmpty) {
            yield LabelerSuccess(images.first);
          } else {
            yield LabelerEmpty();
            yield LabelerSuccess(_loadFakeData());
          }
        } else {
          // log(_loadFakeData().toString());
          yield LabelerSuccess(_loadFakeData());
        }
      }
    }
  }

  ClassifiedImage _loadFakeData() {
    return standardSerializers
        .deserializeWith(
          ClassifiedImages.serializer,
          json.decode(testData),
        )!
        .images
        .first;
  }
}
