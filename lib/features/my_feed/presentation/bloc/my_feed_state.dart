import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechine_test_noviindus/util/error/error.dart';
import '../../domain/entities/my_feed_entity.dart';
part 'my_feed_state.freezed.dart';

@freezed
class MyFeedState with _$MyFeedState {
  const factory MyFeedState.initial() = Initial;
  const factory MyFeedState.loading() = Loading;
  const factory MyFeedState.loaded(List<MyFeedEntity> feeds) = Loaded;
  const factory MyFeedState.error(Failure failure) = Error;
}
