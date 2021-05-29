import 'dart:developer';
import 'dart:typed_data';

import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({
    Key? key,
  }) : super(key: key);

  Future<Uint8List?> _pickImage() async {
    try {
      final pickedFile = await FilePickerCross.importFromStorage(
        type: FileTypeCross.custom,
        fileExtension: 'jpg, png, jpeg',
      );

      final fileName = pickedFile.fileName.toString();
      if (!RegExp(r'\.((jpg)|(png))$').hasMatch(fileName)) {
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Button(
        onPressed: () async {
          final pickedImage = await _pickImage();
          if (pickedImage != null) {
            context.read<ImagePickerCubit>().pick(pickedImage);
          }
        },
        child: const Text(Locale_cs.pageItemHeader1),
      ),
    );
  }
}
