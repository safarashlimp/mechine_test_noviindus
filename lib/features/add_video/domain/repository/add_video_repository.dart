import 'package:mechine_test_noviindus/features/add_video/domain/entities/add_video_entity.dart';

abstract class VideoRepository {
  Future<void> uploadVideo({required VideoEntity video, required String token});
}
