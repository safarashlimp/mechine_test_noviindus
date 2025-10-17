import 'package:mechine_test_noviindus/features/add_video/data/data_source/add_video_data_source.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/entities/add_video_entity.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/repository/add_video_repository.dart';

class AddVideoRepositoryImpl implements VideoRepository {
  final AddVideoDataSource dataSource;

  AddVideoRepositoryImpl({required this.dataSource});

  @override
  Future<void> uploadVideo({
    required VideoEntity video,
    required String token,
  }) {
    return dataSource.uploadVideo(video, token);
  }
}
