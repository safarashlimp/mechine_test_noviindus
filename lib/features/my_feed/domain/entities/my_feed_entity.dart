import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_feed_entity.freezed.dart';
part 'my_feed_entity.g.dart';

@freezed
class MyFeedEntity with _$MyFeedEntity {
  const factory MyFeedEntity({
    required int id,
    required String video,
    required String image,
    required String description,
    required String category,
  }) = _MyFeedEntity;

  factory MyFeedEntity.fromJson(Map<String, dynamic> json) =>
      _$MyFeedEntityFromJson(json);
}
