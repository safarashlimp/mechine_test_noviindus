import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "validation_errors") ValidationErrors? validationErrors,
    @JsonKey(name: "token") Token? token,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "privilage") bool? privilage,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class ValidationErrors with _$ValidationErrors {
  const factory ValidationErrors({
    @JsonKey(name: "phone") List<String>? phone,
    @JsonKey(name: "country_code") List<String>? countryCode,
  }) = _ValidationErrors;

  factory ValidationErrors.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorsFromJson(json);
}

@freezed
class Token with _$Token {
  const factory Token({required String refresh, required String access}) =
      _Token;
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
