import '../entities/my_feed_entity.dart';

abstract class MyFeedRepository {
  Future<List<MyFeedEntity>> getMyFeed({
    required String token,
    required int page,
  });
}
