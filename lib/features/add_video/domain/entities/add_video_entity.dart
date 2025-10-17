import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  final String videoPath;
  final String thumbnailPath;
  final String description;
  final List<int> categories;

  const VideoEntity({
    required this.videoPath,
    required this.thumbnailPath,
    required this.description,
    required this.categories,
  });

  @override
  List<Object?> get props => [
    videoPath,
    thumbnailPath,
    description,
    categories,
  ];
}
