part of 'labeler_bloc.dart';

abstract class LabelerState extends Equatable {
  const LabelerState();
}

class LabelerInitial extends LabelerState {
  @override
  List<Object> get props => [];
}

class LabelerLoading extends LabelerState {
  @override
  List<Object> get props => [];
}

class LabelerError extends LabelerState {

  final String message;

  LabelerError(this.message);

  @override
  List<Object> get props => [message];
}

class LabelerSucess extends LabelerState {
  @override
  List<Object> get props => [];
}
