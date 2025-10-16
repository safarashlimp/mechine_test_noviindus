// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "validation_errors")
  ValidationErrors? get validationErrors => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  Token? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "privilage")
  bool? get privilage => throw _privateConstructorUsedError;

  /// Serializes this LoginModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "validation_errors") ValidationErrors? validationErrors,
      @JsonKey(name: "token") Token? token,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "privilage") bool? privilage});

  $ValidationErrorsCopyWith<$Res>? get validationErrors;
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? validationErrors = freezed,
    Object? token = freezed,
    Object? phone = freezed,
    Object? privilage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      validationErrors: freezed == validationErrors
          ? _value.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      privilage: freezed == privilage
          ? _value.privilage
          : privilage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorsCopyWith<$Res>? get validationErrors {
    if (_value.validationErrors == null) {
      return null;
    }

    return $ValidationErrorsCopyWith<$Res>(_value.validationErrors!, (value) {
      return _then(_value.copyWith(validationErrors: value) as $Val);
    });
  }

  /// Create a copy of LoginModel
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
abstract class _$$LoginModelImplCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$LoginModelImplCopyWith(
          _$LoginModelImpl value, $Res Function(_$LoginModelImpl) then) =
      __$$LoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "validation_errors") ValidationErrors? validationErrors,
      @JsonKey(name: "token") Token? token,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "privilage") bool? privilage});

  @override
  $ValidationErrorsCopyWith<$Res>? get validationErrors;
  @override
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$LoginModelImplCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$LoginModelImpl>
    implements _$$LoginModelImplCopyWith<$Res> {
  __$$LoginModelImplCopyWithImpl(
      _$LoginModelImpl _value, $Res Function(_$LoginModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? validationErrors = freezed,
    Object? token = freezed,
    Object? phone = freezed,
    Object? privilage = freezed,
  }) {
    return _then(_$LoginModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      validationErrors: freezed == validationErrors
          ? _value.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      privilage: freezed == privilage
          ? _value.privilage
          : privilage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginModelImpl implements _LoginModel {
  const _$LoginModelImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "validation_errors") this.validationErrors,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "privilage") this.privilage});

  factory _$LoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "validation_errors")
  final ValidationErrors? validationErrors;
  @override
  @JsonKey(name: "token")
  final Token? token;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "privilage")
  final bool? privilage;

  @override
  String toString() {
    return 'LoginModel(status: $status, message: $message, validationErrors: $validationErrors, token: $token, phone: $phone, privilage: $privilage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.validationErrors, validationErrors) ||
                other.validationErrors == validationErrors) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.privilage, privilage) ||
                other.privilage == privilage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, validationErrors, token, phone, privilage);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      __$$LoginModelImplCopyWithImpl<_$LoginModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModelImplToJson(
      this,
    );
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {@JsonKey(name: "status") required final bool status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "validation_errors")
      final ValidationErrors? validationErrors,
      @JsonKey(name: "token") final Token? token,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "privilage") final bool? privilage}) = _$LoginModelImpl;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$LoginModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "validation_errors")
  ValidationErrors? get validationErrors;
  @override
  @JsonKey(name: "token")
  Token? get token;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "privilage")
  bool? get privilage;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationErrors _$ValidationErrorsFromJson(Map<String, dynamic> json) {
  return _ValidationErrors.fromJson(json);
}

/// @nodoc
mixin _$ValidationErrors {
  @JsonKey(name: "phone")
  List<String>? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  List<String>? get countryCode => throw _privateConstructorUsedError;

  /// Serializes this ValidationErrors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorsCopyWith<ValidationErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorsCopyWith<$Res> {
  factory $ValidationErrorsCopyWith(
          ValidationErrors value, $Res Function(ValidationErrors) then) =
      _$ValidationErrorsCopyWithImpl<$Res, ValidationErrors>;
  @useResult
  $Res call(
      {@JsonKey(name: "phone") List<String>? phone,
      @JsonKey(name: "country_code") List<String>? countryCode});
}

/// @nodoc
class _$ValidationErrorsCopyWithImpl<$Res, $Val extends ValidationErrors>
    implements $ValidationErrorsCopyWith<$Res> {
  _$ValidationErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationErrorsImplCopyWith<$Res>
    implements $ValidationErrorsCopyWith<$Res> {
  factory _$$ValidationErrorsImplCopyWith(_$ValidationErrorsImpl value,
          $Res Function(_$ValidationErrorsImpl) then) =
      __$$ValidationErrorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "phone") List<String>? phone,
      @JsonKey(name: "country_code") List<String>? countryCode});
}

/// @nodoc
class __$$ValidationErrorsImplCopyWithImpl<$Res>
    extends _$ValidationErrorsCopyWithImpl<$Res, _$ValidationErrorsImpl>
    implements _$$ValidationErrorsImplCopyWith<$Res> {
  __$$ValidationErrorsImplCopyWithImpl(_$ValidationErrorsImpl _value,
      $Res Function(_$ValidationErrorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$ValidationErrorsImpl(
      phone: freezed == phone
          ? _value._phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      countryCode: freezed == countryCode
          ? _value._countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationErrorsImpl implements _ValidationErrors {
  const _$ValidationErrorsImpl(
      {@JsonKey(name: "phone") final List<String>? phone,
      @JsonKey(name: "country_code") final List<String>? countryCode})
      : _phone = phone,
        _countryCode = countryCode;

  factory _$ValidationErrorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorsImplFromJson(json);

  final List<String>? _phone;
  @override
  @JsonKey(name: "phone")
  List<String>? get phone {
    final value = _phone;
    if (value == null) return null;
    if (_phone is EqualUnmodifiableListView) return _phone;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _countryCode;
  @override
  @JsonKey(name: "country_code")
  List<String>? get countryCode {
    final value = _countryCode;
    if (value == null) return null;
    if (_countryCode is EqualUnmodifiableListView) return _countryCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ValidationErrors(phone: $phone, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorsImpl &&
            const DeepCollectionEquality().equals(other._phone, _phone) &&
            const DeepCollectionEquality()
                .equals(other._countryCode, _countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_phone),
      const DeepCollectionEquality().hash(_countryCode));

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorsImplCopyWith<_$ValidationErrorsImpl> get copyWith =>
      __$$ValidationErrorsImplCopyWithImpl<_$ValidationErrorsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorsImplToJson(
      this,
    );
  }
}

abstract class _ValidationErrors implements ValidationErrors {
  const factory _ValidationErrors(
          {@JsonKey(name: "phone") final List<String>? phone,
          @JsonKey(name: "country_code") final List<String>? countryCode}) =
      _$ValidationErrorsImpl;

  factory _ValidationErrors.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorsImpl.fromJson;

  @override
  @JsonKey(name: "phone")
  List<String>? get phone;
  @override
  @JsonKey(name: "country_code")
  List<String>? get countryCode;

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorsImplCopyWith<_$ValidationErrorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  String get refresh => throw _privateConstructorUsedError;
  String get access => throw _privateConstructorUsedError;

  /// Serializes this Token to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call({String refresh, String access});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh, String access});
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = null,
  }) {
    return _then(_$TokenImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl implements _Token {
  const _$TokenImpl({required this.refresh, required this.access});

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  final String refresh;
  @override
  final String access;

  @override
  String toString() {
    return 'Token(refresh: $refresh, access: $access)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.access, access) || other.access == access));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refresh, access);

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {required final String refresh,
      required final String access}) = _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  String get refresh;
  @override
  String get access;

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
