import 'dart:developer';
import 'dart:typed_data';

import 'package:file_picker_cross/file_picker_cross.dart';

/// Returns a picked image in `.png` or `.jpg` format as [Uint8List].
///
/// If the picked file was not an image or there was an error, `null`
/// is returned.
Future<Uint8List?> pickImage() async {
  try {
    final pickedFile = await FilePickerCross.importFromStorage(
      type: FileTypeCross.custom,
      fileExtension: 'jpg, png, jpeg',
    );

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
