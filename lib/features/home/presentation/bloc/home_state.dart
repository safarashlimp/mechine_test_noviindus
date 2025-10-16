import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';
import 'package:mechine_test_noviindus/util/error/error.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(HomeEntity data) = Loaded;
  const factory HomeState.error(Failure message) = Error;
}
