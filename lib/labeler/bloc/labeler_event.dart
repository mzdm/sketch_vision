part of 'labeler_bloc.dart';

abstract class LabelerEvent extends Equatable {
  const LabelerEvent();
}

class LabelerClassified extends LabelerEvent {
  @override
  List<Object> get props => [];
}
