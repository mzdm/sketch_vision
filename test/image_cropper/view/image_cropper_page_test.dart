// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sketch_vision_app/image_cropper/view/image_cropper_page.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';

import '../../test_helpers/test_helpers.dart';

class MockImagePickerCubit extends MockCubit<ImagePickerState>
    implements ImagePickerCubit {}

class FakeImagePickerState extends Fake implements ImagePickerState {}

void main() {
  late MockImagePickerCubit mockImagePickerCubit;

  setUpAll(() {
    registerFallbackValue<ImagePickerState>(FakeImagePickerState());
    registerFallbackValue<ImagePickerCubit>(MockImagePickerCubit());
    registerFallbackValue<Uint8List>(Uint8List.fromList(<int>[0, 0]));
  });

  group('ImageCropperPage', () {
    testWidgets('shows ImageCropperView', (tester) async {
      mockImagePickerCubit = MockImagePickerCubit();
      when(() => mockImagePickerCubit.state).thenReturn(
        ImagePickerPicked(getTestImageBytes()),
      );

      await tester.pumpApp(
        const ImageCropperPage(),
        imagePickerCubit: mockImagePickerCubit,
      );
      expect(find.byType(ImageCropperView), findsOneWidget);
    });
  });

  group('ImageCropperView', () {
    setUp(() {
      mockImagePickerCubit = MockImagePickerCubit();
      when(() => mockImagePickerCubit.state).thenReturn(
        ImagePickerPicked(getTestImageBytes()),
      );
    });

    testWidgets(
        'clicking on the crop button starts/emits '
        'ImagePickerCropping', (tester) async {
      tester.setScreenSize(800, 800);
      await tester.pumpApp(
        const ImageCropperPage(),
        imagePickerCubit: mockImagePickerCubit,
      );
      tester
          .widget<Button>(find.byKey(Key('imageCropperView_cropButton')))
          .onPressed!();
      await tester.pumpAndSettle();

      verify(() => mockImagePickerCubit.cropInited()).called(1);
    });
  });
}
