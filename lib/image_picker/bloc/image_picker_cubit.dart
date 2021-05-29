import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerInitial());

  void reset() => emit(ImagePickerInitial());

  void pick(Uint8List imageBytes) => emit(ImagePickerPicked(imageBytes));

  void cropInited() => emit(ImagePickerCropLoading());

  void crop(Uint8List imageBytes) => emit(ImagePickerCropFinished(imageBytes));
}
