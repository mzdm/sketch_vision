import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide IconButton;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';

class ImageCropperPage extends StatelessWidget {
  const ImageCropperPage({Key? key}) : super(key: key);

  static FluentPageRoute route(BuildContext context) {
    return FluentPageRoute(
      builder: (_) => BlocProvider.value(
        value: context.read<ImagePickerCubit>(),
        child: const ImageCropperPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SinglePageContent(
      title: context.l10n.crop_title,
      content: const ImageCropperView(),
    );
  }
}


/// {@template image_cropper_page}
/// Page view where an image gets cropped after the image is picked
/// from the local storage.
/// {@endtemplate}
class ImageCropperView extends StatefulWidget {
  /// {@macro image_cropper_page}
  const ImageCropperView({Key? key}) : super(key: key);

  @override
  _ImageCropperViewState createState() => _ImageCropperViewState();
}

class _ImageCropperViewState extends State<ImageCropperView> {
  final cropController = CropController();

  late Uint8List imageBytes;
  late ImagePickerCubit imagePickerCubit;

  @override
  void initState() {
    super.initState();
    imagePickerCubit = context.read<ImagePickerCubit>();
    imageBytes = (imagePickerCubit.state as ImagePickerPicked).imageBytes;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Button(
                key: const Key('imageCropperView_cropButton'),
                onPressed: () {
                  imagePickerCubit.cropInited();
                  cropController.crop();
                },
                child: Text(context.l10n.next),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Flexible(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Crop(
              initialSize: 0.75,
              image: imageBytes,
              controller: cropController,
              onCropped: (image) => imagePickerCubit.crop(image),
            ),
          ),
        ),
      ],
    );
  }
}
