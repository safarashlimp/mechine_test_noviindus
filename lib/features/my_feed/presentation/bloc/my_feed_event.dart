import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_feed_event.freezed.dart';

@freezed
class MyFeedEvent with _$MyFeedEvent {
  const factory MyFeedEvent.fetchMyFeed({
    required String token,
    @Default(1) int page,
  }) = FetchMyFeedEvent;
}
