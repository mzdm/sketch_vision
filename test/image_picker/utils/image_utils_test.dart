import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sketch_vision_app/image_picker/utils/image_utils.dart';

class MockFilePickerCrossWrapper extends Mock
    implements FilePickerCrossWrapper {}

class MockFilePickerCross extends Mock implements FilePickerCross {}

void main() {
  group('image_utils', () {
    group('pickImage', () {
      late final MockFilePickerCrossWrapper mockFilePickerCrossWrapper;
      late final MockFilePickerCross mockFilePickerCross;
      late final FilePickerUtils filePickerUtils;

      setUpAll(() {
        mockFilePickerCrossWrapper = MockFilePickerCrossWrapper();
        mockFilePickerCross = MockFilePickerCross();
        filePickerUtils = FilePickerUtils(mockFilePickerCrossWrapper);

        when(mockFilePickerCrossWrapper.importFromStorage)
            .thenAnswer((_) async => Future.value(mockFilePickerCross));
        when(mockFilePickerCross.toUint8List)
            .thenReturn(Uint8List.fromList(<int>[255]));
      });

      test('does not return null when correct file extension (.jpg)', () async {
        when(() => mockFilePickerCross.fileName).thenReturn('dog.jpg');
        expect(await filePickerUtils.pickImage(), isNotNull);
        verify(() => mockFilePickerCross.fileName);
        verify(mockFilePickerCrossWrapper.importFromStorage);
      });

      test('does not return null when correct file extension (.JPG)', () async {
        when(() => mockFilePickerCross.fileName).thenReturn('dog.JPG');
        expect(await filePickerUtils.pickImage(), isNotNull);
        verify(() => mockFilePickerCross.fileName);
        verify(mockFilePickerCrossWrapper.importFromStorage);
      });

      test('does not return null when correct file extension (.png)', () async {
        when(() => mockFilePickerCross.fileName).thenReturn('cat.png');
        expect(await filePickerUtils.pickImage(), isNotNull);
        verify(() => mockFilePickerCross.fileName);
        verify(mockFilePickerCrossWrapper.importFromStorage);
      });

      test('returns null when incorrect file extension (.pdf)', () async {
        when(() => mockFilePickerCross.fileName).thenReturn('notes.pdf');
        expect(await filePickerUtils.pickImage(), null);
        verify(() => mockFilePickerCross.fileName);
        verify(mockFilePickerCrossWrapper.importFromStorage);
      });

      test('returns null when incorrect file extension', () async {
        when(() => mockFilePickerCross.fileName).thenReturn('unknown_file');
        expect(await filePickerUtils.pickImage(), null);
        verify(() => mockFilePickerCross.fileName);
        verify(mockFilePickerCrossWrapper.importFromStorage);
      });
    });
  });
}
