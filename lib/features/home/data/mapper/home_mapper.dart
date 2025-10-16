import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';

import '../model/home_model.dart';


extension HomeMapper on HomeModel {
  HomeEntity toEntity() {
    return HomeEntity(
      categories: categoryDict.map((e) => e.toEntity()).toList(),
      feeds: results.map((e) => e.toEntity()).toList(),
    );
  }
}


extension CategoryMapper on CategoryDictModel {
  CategoryEntity toEntity() => CategoryEntity(id: id, title: title);
}

extension FeedMapper on FeedModel {
  FeedEntity toEntity() => FeedEntity(
    id: id,
    description: description,
    image: image,
    video: video,
    user: user.toEntity(),
  );
}

extension FeedUserMapper on FeedUserModel {
  UserEntity toEntity() => UserEntity(id: id, name: name, image: image);
}
