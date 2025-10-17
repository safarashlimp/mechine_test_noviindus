import 'package:bloc/bloc.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/entities/add_video_entity.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/repository/add_video_repository.dart';
import 'add_video_state.dart';

abstract class AddVideoEvent {}

class UploadVideoEvent extends AddVideoEvent {
  final VideoEntity video;
  final String token;

  UploadVideoEvent({required this.video, required this.token});
}

class AddVideoBloc extends Bloc<UploadVideoEvent, AddVideoState> {
  final VideoRepository repository;

  AddVideoBloc({required this.repository}) : super(AddVideoInitial()) {
    on<UploadVideoEvent>((event, emit) async {
      emit(AddVideoLoading());
      try {
        await repository.uploadVideo(video: event.video, token: event.token);
        emit(AddVideoSuccess());
      } catch (e) {
        emit(AddVideoError(e.toString()));
      }
    });
  }
}
