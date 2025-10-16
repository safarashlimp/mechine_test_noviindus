import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechine_test_noviindus/features/login/domain/entities/login_entity.dart';
import 'package:mechine_test_noviindus/util/error/error.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.loaded({required LoginEntity loginEntity}) = Loaded;
  const factory LoginState.error({required Failure failure}) = Error;
}
