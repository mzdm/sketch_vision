import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:ibm_apis/visual_recognition/model/classified_images.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';

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
        final imageBytes = imagePickerState.imageBytes;

        ClassifiedImages? classifiedImages;
        bool testMode = true;
        if (!testMode) {
          final response = await ibmVisualRecognition.getGeneralApi().classify(
                imagesFile: dio.MultipartFile.fromBytes(
                  imageBytes,
                  filename: 'example',
                ),
                version: '2018-03-19',
                threshold: 0.0,
              );
          classifiedImages = response.data;
        } else {
          final test = standardSerializers.deserializeWith(
            ClassifiedImages.serializer,
            json.decode(testData),
          );
          log(test.toString());
        }
      }
    }
    // TODO: implement mapEventToState
  }
}

const testData = '''
{
   "asd":"ClassifiedImages",
   "custom_classes":0,
   "images_processed":1,
   "images":[
      {
         "image":"images_file",
         "classifiers":[
            {
               "name":"default",
               "classifier_id":"default",
               "classes":[
                  {
                     "class":"analog clock",
                     "score":0.845,
                     "type_hierarchy":"/measuring instrument/timepiece/clock/analog clock"
                  },
                  {
                     "class":"clock",
                     "score":0.922
                  },
                  {
                     "class":"timepiece",
                     "score":0.925
                  },
                  {
                     "class":"measuring instrument",
                     "score":0.925
                  },
                  {
                     "class":"wall clock",
                     "score":0.5,
                     "type_hierarchy":"/measuring instrument/timepiece/clock/wall clock"
                  },
                  {
                     "class":"instrument",
                     "score":0.781
                  },
                  {
                     "class":"indicator",
                     "score":0.801
                  },
                  {
                     "class":"ash grey color",
                     "score":0.69
                  },
                  {
                     "class":"pink color",
                     "score":0.397
                  }
               ]
            }
         ]
      }
   ]
}
''';
