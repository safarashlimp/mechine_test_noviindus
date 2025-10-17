import 'package:equatable/equatable.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/entities/add_video_entity.dart';

abstract class AddVideoEvent extends Equatable {
  const AddVideoEvent();

  @override
  List<Object?> get props => [];
}

class UploadVideoEvent extends AddVideoEvent {
  final VideoEntity video;
  final String token;

  const UploadVideoEvent({required this.video, required this.token});

  @override
  List<Object?> get props => [video, token];
}
