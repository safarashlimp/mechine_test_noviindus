import 'package:mechine_test_noviindus/features/add_video/domain/entities/add_video_entity.dart';

class VideoModel extends VideoEntity {
  VideoModel({
    required super.videoPath,
    required super.thumbnailPath,
    required super.description,
    required super.categories,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      videoPath: json['video'],
      thumbnailPath: json['image'],
      description: json['desc'],
      categories: List<int>.from(json['category']),
    );
  }

  Map<String, dynamic> toJson() => {
    'video': videoPath,
    'image': thumbnailPath,
    'desc': description,
    'category': categories,
  };

  VideoEntity toEntity() => VideoEntity(
    videoPath: videoPath,
    thumbnailPath: thumbnailPath,
    description: description,
    categories: categories,
  );
}
