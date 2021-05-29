part of 'image_picker_cubit.dart';

abstract class ImagePickerState extends Equatable {
  const ImagePickerState();
}

class ImagePickerInitial extends ImagePickerState {
  @override
  List<Object> get props => [];
}

class ImagePickerPicked extends ImagePickerState {
  final Uint8List imageBytes;

  const ImagePickerPicked(this.imageBytes);

  @override
  List<Object> get props => [imageBytes];
}

class ImagePickerCropping extends ImagePickerState {
  const ImagePickerCropping();

  @override
  List<Object> get props => [];
}

class ImagePickerCropFinished extends ImagePickerState {
  final Uint8List imageBytes;

  const ImagePickerCropFinished(this.imageBytes);

  @override
  List<Object> get props => [imageBytes];
}
