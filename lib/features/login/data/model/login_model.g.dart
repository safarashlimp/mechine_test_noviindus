// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String?,
      validationErrors: json['validation_errors'] == null
          ? null
          : ValidationErrors.fromJson(
              json['validation_errors'] as Map<String, dynamic>),
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      privilage: json['privilage'] as bool?,
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'validation_errors': instance.validationErrors,
      'token': instance.token,
      'phone': instance.phone,
      'privilage': instance.privilage,
    };

_$ValidationErrorsImpl _$$ValidationErrorsImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationErrorsImpl(
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
      countryCode: (json['country_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ValidationErrorsImplToJson(
        _$ValidationErrorsImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'country_code': instance.countryCode,
    };

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
