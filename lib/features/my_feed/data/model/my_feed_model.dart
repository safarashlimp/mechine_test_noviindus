import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechine_test_noviindus/features/my_feed/domain/entities/my_feed_entity.dart';
part 'my_feed_model.freezed.dart';
part 'my_feed_model.g.dart';

@freezed
@freezed
class MyFeedModel with _$MyFeedModel {
  const factory MyFeedModel({
    required int id,
    @Default('') String video,
    @Default('') String image,
    @Default('') String description,
    @Default('') String category,
    @JsonKey(name: "message") String? message,
  }) = _MyFeedModel;

  factory MyFeedModel.fromJson(Map<String, dynamic> json) =>
      _$MyFeedModelFromJson(json);
}

extension MyFeedModelX on MyFeedModel {
  MyFeedEntity toEntity() => MyFeedEntity(
    id: id,
    video: video ?? '',
    image: image ?? '',
    description: description ?? '',
    category: category ?? '',
  );
}
