part of 'image_picker_cubit.dart';

abstract class ImagePickerState extends Equatable {
  const ImagePickerState();

  @override
  List<Object> get props => [];
}

class ImagePickerInitial extends ImagePickerState {
  const ImagePickerInitial();
}

class ImagePickerPicked extends ImagePickerState {
  const ImagePickerPicked(this.imageBytes);

  final Uint8List imageBytes;

  @override
  List<Object> get props => [imageBytes];
}

class ImagePickerCropping extends ImagePickerState {
  const ImagePickerCropping();
}

class ImagePickerCropFinished extends ImagePickerState {
  const ImagePickerCropFinished(this.imageBytes);

  final Uint8List imageBytes;

  @override
  List<Object> get props => [imageBytes];
}
