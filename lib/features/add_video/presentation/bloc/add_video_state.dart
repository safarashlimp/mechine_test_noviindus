import 'package:equatable/equatable.dart';

abstract class AddVideoState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddVideoInitial extends AddVideoState {}

class AddVideoLoading extends AddVideoState {}

class AddVideoProgress extends AddVideoState {
  final double progress;
  AddVideoProgress(this.progress);

  @override
  List<Object?> get props => [progress];
}

class AddVideoSuccess extends AddVideoState {}

class AddVideoError extends AddVideoState {
  final String message;
  AddVideoError(this.message);

  @override
  List<Object?> get props => [message];
}
