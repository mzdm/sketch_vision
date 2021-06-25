// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';

void main() {
  group('ImagePickerState', () {
    group('ImagePickerInitial', () {
      test('value equality is working', () {
        final A = ImagePickerInitial();
        final B = ImagePickerInitial();
        expect(A, equals(B));
      });
    });

    group('ImagePickerPicked', () {
      test('value equality is working', () {
        final imageBytes = Uint8List.fromList(<int>[0, 255]);
        final imageBytes2 = Uint8List.fromList(<int>[0, 255, 90]);

        final A = ImagePickerPicked(imageBytes);
        final B = ImagePickerPicked(imageBytes);
        final C = ImagePickerPicked(imageBytes2);

        expect(A, equals(B));
        expect(A, isNot(equals(C)));
      });
    });

    group('ImagePickerCropping', () {
      test('value equality is working', () {
        final A = ImagePickerCropping();
        final B = ImagePickerCropping();
        expect(A, equals(B));
      });
    });

    group('ImagePickerCropFinished', () {
      test('value equality is working', () {
        final A = ImagePickerCropFinished(Uint8List.fromList(<int>[0, 255, 0]));
        final B = ImagePickerCropFinished(Uint8List.fromList(<int>[0, 255]));
        expect(A, isNot(equals(B)));
      });
    });
  });
}
