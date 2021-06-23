import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/image_picker/utils/image_utils.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';

/// {@template image_picker_page}
/// Page view where an image gets picked from the local storage.
/// {@endtemplate}
class ImagePickerPage extends StatelessWidget {
  /// {@macro image_picker_page}
  const ImagePickerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Button(
        onPressed: () async {
          final imagePickerBloc = context.read<ImagePickerCubit>()..reset();
          final pickedImage = await pickImage();
          if (pickedImage != null) {
            imagePickerBloc.pick(pickedImage);
          }
        },
        child: Text(context.l10n.pageItemHeader1),
      ),
    );
  }
}
