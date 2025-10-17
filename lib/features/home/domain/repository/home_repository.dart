import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';

abstract class HomeRepository {
  Future<HomeEntity> getHomeData();
}
