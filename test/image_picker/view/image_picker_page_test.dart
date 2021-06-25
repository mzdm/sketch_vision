// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/image_picker/utils/image_utils.dart';
import 'package:sketch_vision_app/image_picker/view/image_picker_page.dart';

import '../../../test/test_helpers/helpers.dart';

class MockFilePickerUtils extends Mock implements FilePickerUtils {}

void main() {
  group('ImagePickerPage', () {
    late ImagePickerCubit imagePickerCubit;
    late MockFilePickerUtils mockFilePickerUtils;

    final fakeImageBytes = Uint8List.fromList(<int>[0, 255]);
    final fakeImageBytes2 = Uint8List.fromList(<int>[255, 255]);

    setUpAll(() {
      mockFilePickerUtils = MockFilePickerUtils();
    });

    setUp(() {
      imagePickerCubit = ImagePickerCubit();
    });

    tearDown(() {
      imagePickerCubit.close();
    });

    testWidgets('displays the page', (tester) async {
      await tester.pumpApp(ImagePickerPage());
      await tester.pumpAndSettle();
      expect(find.byType(ImagePickerPage), findsOneWidget);
      expect(find.byKey(Key('imagePickerPage_filePickButton')), findsOneWidget);
    });

    testWidgets(
        'successfully picking an image stores the image and '
        'emits [ImagePickerPicked] state', (tester) async {
      when(() => mockFilePickerUtils.pickImage())
          .thenAnswer((_) async => fakeImageBytes);

      await tester.pumpApp(
        BlocProvider.value(
          value: imagePickerCubit,
          child: ImagePickerPage(filePickerUtils: mockFilePickerUtils),
        ),
      );
      await tester.pumpAndSettle();
      expect(imagePickerCubit.state, equals(ImagePickerInitial()));

      final button = tester.widget<Button>(
        find.byKey(Key('imagePickerPage_filePickButton')),
      );
      button.onPressed!();
      await tester.pumpAndSettle();

      expect(
        imagePickerCubit.state,
        equals(ImagePickerPicked(fakeImageBytes)),
      );
      expect(
        imagePickerCubit.state,
        isNot(equals(ImagePickerPicked(fakeImageBytes2))),
      );
    });

    testWidgets(
        'does not change state if there was an error '
        'while picking the image', (tester) async {
      when(() => mockFilePickerUtils.pickImage()).thenAnswer((_) async => null);

      await tester.pumpApp(
        BlocProvider.value(
          value: imagePickerCubit,
          child: ImagePickerPage(filePickerUtils: mockFilePickerUtils),
        ),
      );
      await tester.pumpAndSettle();
      expect(imagePickerCubit.state, equals(ImagePickerInitial()));

      final button = tester.widget<Button>(
        find.byKey(Key('imagePickerPage_filePickButton')),
      );
      button.onPressed!();
      await tester.pumpAndSettle();

      expect(imagePickerCubit.state, equals(ImagePickerInitial()));
    });

    testWidgets(
        'clicking on the file picker button '
        'resets ImagePickerCubit state', (tester) async {
      when(() => mockFilePickerUtils.pickImage()).thenAnswer((_) async => null);

      await tester.pumpApp(
        BlocProvider.value(
          value: imagePickerCubit..emit(ImagePickerCropping()),
          child: ImagePickerPage(filePickerUtils: mockFilePickerUtils),
        ),
      );
      await tester.pumpAndSettle();
      expect(imagePickerCubit.state, equals(ImagePickerCropping()));

      final button = tester.widget<Button>(
        find.byKey(Key('imagePickerPage_filePickButton')),
      );
      button.onPressed!();
      await tester.pumpAndSettle();

      expect(imagePickerCubit.state, equals(ImagePickerInitial()));
    });
  });
}
