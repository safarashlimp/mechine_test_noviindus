
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechine_test_noviindus/features/login/data/model/login_model.dart';
part 'login_entity.freezed.dart';
@freezed
class LoginEntity with _$LoginEntity {
  const LoginEntity._();

  const factory LoginEntity({
    required bool status,
    required String message,
    required String phone,
    required bool privilage,
    ValidationErrorsEntity? validationErrors,
    Token? token,
  }) = _LoginEntity;

  factory LoginEntity.fromModel(LoginModel model) {
    return LoginEntity(
      status: model.status,
      message: model.message ?? "No message",
      phone: model.phone ?? '',
      privilage: model.privilage ?? false,
      validationErrors: model.validationErrors != null
          ? ValidationErrorsEntity.fromModel(model.validationErrors!)
          : null,
      token: model.token,
    );
  }
}

@freezed
class ValidationErrorsEntity with _$ValidationErrorsEntity {
  const ValidationErrorsEntity._();

  const factory ValidationErrorsEntity({
    required List<String> phone,
    required List<String> countryCode,
  }) = _ValidationErrorsEntity;

  factory ValidationErrorsEntity.fromModel(ValidationErrors model) {
    return ValidationErrorsEntity(
      phone: model.phone ?? [],
      countryCode: model.countryCode ?? [],
    );
  }
}




