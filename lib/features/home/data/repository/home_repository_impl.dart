import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';

import '../../domain/repository/home_repository.dart';
import '../data_source/home_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<HomeEntity> getHomeData() async {
    final model = await dataSource.getHomeData();

    final categories = model.categoryDict
        .map((c) => CategoryEntity(id: c.id, title: c.title))
        .toList();

    final feeds = model.results
        .map(
          (f) => FeedEntity(
            id: f.id,
            description: f.description,
            image: f.image,
            video: f.video,
            user: UserEntity(
              id: f.user.id,
              name: f.user.name,
              image: f.user.image,
            ),
          ),
        )
        .toList();

    return HomeEntity(categories: categories, feeds: feeds);
  }
}
