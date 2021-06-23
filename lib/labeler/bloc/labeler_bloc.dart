import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:ibm_apis/visual_recognition/model/classified_images.dart';
import 'package:sketch_vision_app/app/config.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/labeler/repositories/visual_recognition_repository.dart';

part 'labeler_event.dart';

part 'labeler_state.dart';

class LabelerBloc extends Bloc<LabelerEvent, LabelerState> {
  LabelerBloc({
    required this.imagePickerBloc,
    required this.visualRecogRepository,
  }) : super(LabelerInitial());

  final ImagePickerCubit imagePickerBloc;
  final VisualRecogRepository visualRecogRepository;

  @override
  Stream<LabelerState> mapEventToState(
    LabelerEvent event,
  ) async* {
    if (event is LabelerClassified) {
      final imagePickerState = imagePickerBloc.state;
      if (imagePickerState is ImagePickerCropFinished) {
        yield LabelerLoading();

        ClassifiedImages? classifiedImages;

        if (!AppConfig.testMode) {
          final imageBytes = imagePickerState.imageBytes;

          try {
            final response = await visualRecogRepository.classifyImage(
              imageBytes,
            );
            classifiedImages = response.data;
          } catch (e) {
            log(e.toString());
            final errorMessage = e is dio.DioError ? e.message : e.toString();
            yield LabelerError(errorMessage);
            await Future.delayed(const Duration(milliseconds: 1500));
          }
        }

        if (classifiedImages != null) {
          log(classifiedImages.toString());
          final images = classifiedImages.images;
          if (images.isNotEmpty) {
            yield LabelerSuccess(images.first);
          } else {
            yield LabelerEmpty();
            yield LabelerSuccess(
              visualRecogRepository.loadFakeClassificationData(),
            );
          }
        } else {
          // load fake data
          await Future.delayed(const Duration(milliseconds: 500));
          yield LabelerSuccess(
            visualRecogRepository.loadFakeClassificationData(),
          );
        }
      }
    }
  }
}
