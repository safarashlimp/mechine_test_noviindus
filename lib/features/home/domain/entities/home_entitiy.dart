import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final List<CategoryEntity> categories;
  final List<FeedEntity> feeds;

  const HomeEntity({required this.categories, required this.feeds});

  @override
  List<Object?> get props => [categories, feeds];
}

class CategoryEntity extends Equatable {
  final String id;
  final String title;

  const CategoryEntity({required this.id, required this.title});

  @override
  List<Object?> get props => [id, title];
}

class FeedEntity extends Equatable {
  final int id;
  final String description;
  final String image;
  final String video;
  final UserEntity user;

  const FeedEntity({
    required this.id,
    required this.description,
    required this.image,
    required this.video,
    required this.user,
  });

  @override
  List<Object?> get props => [id, description, image, video, user];
}

class UserEntity extends Equatable {
  final int id;
  final String name;
  final String? image;

  const UserEntity({required this.id, required this.name, this.image});

  @override
  List<Object?> get props => [id, name, image];
}
