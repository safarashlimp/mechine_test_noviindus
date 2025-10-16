// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEntity {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get privilage => throw _privateConstructorUsedError;
  ValidationErrorsEntity? get validationErrors =>
      throw _privateConstructorUsedError;
  Token? get token => throw _privateConstructorUsedError;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call(
      {bool status,
      String message,
      String phone,
      bool privilage,
      ValidationErrorsEntity? validationErrors,
      Token? token});

  $ValidationErrorsEntityCopyWith<$Res>? get validationErrors;
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? phone = null,
    Object? privilage = null,
    Object? validationErrors = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      privilage: null == privilage
          ? _value.privilage
          : privilage // ignore: cast_nullable_to_non_nullable
              as bool,
      validationErrors: freezed == validationErrors
          ? _value.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as ValidationErrorsEntity?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ) as $Val);
  }

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorsEntityCopyWith<$Res>? get validationErrors {
    if (_value.validationErrors == null) {
      return null;
    }

    return $ValidationErrorsEntityCopyWith<$Res>(_value.validationErrors!,
        (value) {
      return _then(_value.copyWith(validationErrors: value) as $Val);
    });
  }

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginEntityImplCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$LoginEntityImplCopyWith(
          _$LoginEntityImpl value, $Res Function(_$LoginEntityImpl) then) =
      __$$LoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      String message,
      String phone,
      bool privilage,
      ValidationErrorsEntity? validationErrors,
      Token? token});

  @override
  $ValidationErrorsEntityCopyWith<$Res>? get validationErrors;
  @override
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$LoginEntityImplCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$LoginEntityImpl>
    implements _$$LoginEntityImplCopyWith<$Res> {
  __$$LoginEntityImplCopyWithImpl(
      _$LoginEntityImpl _value, $Res Function(_$LoginEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? phone = null,
    Object? privilage = null,
    Object? validationErrors = freezed,
    Object? token = freezed,
  }) {
    return _then(_$LoginEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      privilage: null == privilage
          ? _value.privilage
          : privilage // ignore: cast_nullable_to_non_nullable
              as bool,
      validationErrors: freezed == validationErrors
          ? _value.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as ValidationErrorsEntity?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ));
  }
}

/// @nodoc

class _$LoginEntityImpl extends _LoginEntity {
  const _$LoginEntityImpl(
      {required this.status,
      required this.message,
      required this.phone,
      required this.privilage,
      this.validationErrors,
      this.token})
      : super._();

  @override
  final bool status;
  @override
  final String message;
  @override
  final String phone;
  @override
  final bool privilage;
  @override
  final ValidationErrorsEntity? validationErrors;
  @override
  final Token? token;

  @override
  String toString() {
    return 'LoginEntity(status: $status, message: $message, phone: $phone, privilage: $privilage, validationErrors: $validationErrors, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.privilage, privilage) ||
                other.privilage == privilage) &&
            (identical(other.validationErrors, validationErrors) ||
                other.validationErrors == validationErrors) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, phone, privilage, validationErrors, token);

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      __$$LoginEntityImplCopyWithImpl<_$LoginEntityImpl>(this, _$identity);
}

abstract class _LoginEntity extends LoginEntity {
  const factory _LoginEntity(
      {required final bool status,
      required final String message,
      required final String phone,
      required final bool privilage,
      final ValidationErrorsEntity? validationErrors,
      final Token? token}) = _$LoginEntityImpl;
  const _LoginEntity._() : super._();

  @override
  bool get status;
  @override
  String get message;
  @override
  String get phone;
  @override
  bool get privilage;
  @override
  ValidationErrorsEntity? get validationErrors;
  @override
  Token? get token;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidationErrorsEntity {
  List<String> get phone => throw _privateConstructorUsedError;
  List<String> get countryCode => throw _privateConstructorUsedError;

  /// Create a copy of ValidationErrorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorsEntityCopyWith<ValidationErrorsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorsEntityCopyWith<$Res> {
  factory $ValidationErrorsEntityCopyWith(ValidationErrorsEntity value,
          $Res Function(ValidationErrorsEntity) then) =
      _$ValidationErrorsEntityCopyWithImpl<$Res, ValidationErrorsEntity>;
  @useResult
  $Res call({List<String> phone, List<String> countryCode});
}

/// @nodoc
class _$ValidationErrorsEntityCopyWithImpl<$Res,
        $Val extends ValidationErrorsEntity>
    implements $ValidationErrorsEntityCopyWith<$Res> {
  _$ValidationErrorsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationErrorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String>,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationErrorsEntityImplCopyWith<$Res>
    implements $ValidationErrorsEntityCopyWith<$Res> {
  factory _$$ValidationErrorsEntityImplCopyWith(
          _$ValidationErrorsEntityImpl value,
          $Res Function(_$ValidationErrorsEntityImpl) then) =
      __$$ValidationErrorsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> phone, List<String> countryCode});
}

/// @nodoc
class __$$ValidationErrorsEntityImplCopyWithImpl<$Res>
    extends _$ValidationErrorsEntityCopyWithImpl<$Res,
        _$ValidationErrorsEntityImpl>
    implements _$$ValidationErrorsEntityImplCopyWith<$Res> {
  __$$ValidationErrorsEntityImplCopyWithImpl(
      _$ValidationErrorsEntityImpl _value,
      $Res Function(_$ValidationErrorsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationErrorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
  }) {
    return _then(_$ValidationErrorsEntityImpl(
      phone: null == phone
          ? _value._phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String>,
      countryCode: null == countryCode
          ? _value._countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ValidationErrorsEntityImpl extends _ValidationErrorsEntity {
  const _$ValidationErrorsEntityImpl(
      {required final List<String> phone,
      required final List<String> countryCode})
      : _phone = phone,
        _countryCode = countryCode,
        super._();

  final List<String> _phone;
  @override
  List<String> get phone {
    if (_phone is EqualUnmodifiableListView) return _phone;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phone);
  }

  final List<String> _countryCode;
  @override
  List<String> get countryCode {
    if (_countryCode is EqualUnmodifiableListView) return _countryCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryCode);
  }

  @override
  String toString() {
    return 'ValidationErrorsEntity(phone: $phone, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorsEntityImpl &&
            const DeepCollectionEquality().equals(other._phone, _phone) &&
            const DeepCollectionEquality()
                .equals(other._countryCode, _countryCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_phone),
      const DeepCollectionEquality().hash(_countryCode));

  /// Create a copy of ValidationErrorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorsEntityImplCopyWith<_$ValidationErrorsEntityImpl>
      get copyWith => __$$ValidationErrorsEntityImplCopyWithImpl<
          _$ValidationErrorsEntityImpl>(this, _$identity);
}

abstract class _ValidationErrorsEntity extends ValidationErrorsEntity {
  const factory _ValidationErrorsEntity(
      {required final List<String> phone,
      required final List<String> countryCode}) = _$ValidationErrorsEntityImpl;
  const _ValidationErrorsEntity._() : super._();

  @override
  List<String> get phone;
  @override
  List<String> get countryCode;

  /// Create a copy of ValidationErrorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorsEntityImplCopyWith<_$ValidationErrorsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
