// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';

class MockImagePickerCubit extends Mock implements ImagePickerCubit {}

void main() {
  group('ImagePickerCubit', () {
    late ImagePickerCubit imagePickerCubit;

    final imageBytes = Uint8List.fromList(<int>[0, 255]);

    setUp(() {
      imagePickerCubit = ImagePickerCubit();
    });

    // ignore: unnecessary_lambdas
    tearDown(() {
      imagePickerCubit.close();
    });

    test('initial state is [ImagePickerInitial]', () {
      expect(imagePickerCubit.state, equals(ImagePickerInitial()));
    });

    group('reset Event', () {
      blocTest<ImagePickerCubit, ImagePickerState>(
        'emits [ImagePickerInitial] state when reseted',
        build: () => imagePickerCubit,
        act: (cubit) => cubit.reset(),
        expect: () => <ImagePickerState>[
          ImagePickerInitial(),
        ],
      );
    });

    group('pick Event', () {
      blocTest<ImagePickerCubit, ImagePickerState>(
        'emits [ImagePickerPicked] state when picked',
        build: () => imagePickerCubit,
        act: (cubit) => cubit.pick(imageBytes),
        expect: () => <ImagePickerState>[
          ImagePickerPicked(imageBytes),
        ],
      );
    });

    group('cropInited Event', () {
      blocTest<ImagePickerCubit, ImagePickerState>(
        'emits [ImagePickerCropping] state when crop inited',
        build: () => imagePickerCubit,
        act: (cubit) => cubit.cropInited(),
        expect: () => <ImagePickerState>[
          ImagePickerCropping(),
        ],
      );
    });

    group('crop Event', () {
      blocTest<ImagePickerCubit, ImagePickerState>(
        'emits [ImagePickerCropFinished] state when cropped',
        build: () => imagePickerCubit,
        act: (cubit) => cubit.crop(imageBytes),
        expect: () => <ImagePickerState>[
          ImagePickerCropFinished(imageBytes),
        ],
      );
    });
  });
}
