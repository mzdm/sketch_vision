import 'dart:developer';
import 'dart:typed_data';

import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/foundation.dart';

class FilePickerUtils {
  const FilePickerUtils([
    FilePickerCrossWrapper? filePickerCrossWrapper,
  ]) : this.filePickerCrossWrapper =
            filePickerCrossWrapper ?? const FilePickerCrossWrapper();

  final FilePickerCrossWrapper filePickerCrossWrapper;

  /// Returns a picked image in `.png` or `.jpg` format as [Uint8List].
  ///
  /// If the picked file was not an image or there was an error, `null`
  /// is returned.
  Future<Uint8List?> pickImage() async {
    try {
      final pickedFile = await filePickerCrossWrapper.importFromStorage();

      final fileName = pickedFile.fileName.toString().toLowerCase();
      if (!(fileName.endsWith('.png') || fileName.endsWith('.jpg'))) {
        // TODO: Show some kind of error dialog
        throw (UnsupportedError(
            'picked an image with unsupported file extension: $fileName'));
      }

      log('picked file: $fileName');
      return pickedFile.toUint8List();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}

@visibleForTesting
class FilePickerCrossWrapper {
  const FilePickerCrossWrapper();

  Future<FilePickerCross> importFromStorage() async {
    return await FilePickerCross.importFromStorage(
      type: FileTypeCross.custom,
      fileExtension: 'jpg, png, jpeg',
    );
  }
}
