// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_feed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyFeedEvent {
  String get token => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int page) fetchMyFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int page)? fetchMyFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int page)? fetchMyFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMyFeedEvent value) fetchMyFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMyFeedEvent value)? fetchMyFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMyFeedEvent value)? fetchMyFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MyFeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyFeedEventCopyWith<MyFeedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFeedEventCopyWith<$Res> {
  factory $MyFeedEventCopyWith(
          MyFeedEvent value, $Res Function(MyFeedEvent) then) =
      _$MyFeedEventCopyWithImpl<$Res, MyFeedEvent>;
  @useResult
  $Res call({String token, int page});
}

/// @nodoc
class _$MyFeedEventCopyWithImpl<$Res, $Val extends MyFeedEvent>
    implements $MyFeedEventCopyWith<$Res> {
  _$MyFeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyFeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchMyFeedEventImplCopyWith<$Res>
    implements $MyFeedEventCopyWith<$Res> {
  factory _$$FetchMyFeedEventImplCopyWith(_$FetchMyFeedEventImpl value,
          $Res Function(_$FetchMyFeedEventImpl) then) =
      __$$FetchMyFeedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, int page});
}

/// @nodoc
class __$$FetchMyFeedEventImplCopyWithImpl<$Res>
    extends _$MyFeedEventCopyWithImpl<$Res, _$FetchMyFeedEventImpl>
    implements _$$FetchMyFeedEventImplCopyWith<$Res> {
  __$$FetchMyFeedEventImplCopyWithImpl(_$FetchMyFeedEventImpl _value,
      $Res Function(_$FetchMyFeedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyFeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? page = null,
  }) {
    return _then(_$FetchMyFeedEventImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchMyFeedEventImpl implements FetchMyFeedEvent {
  const _$FetchMyFeedEventImpl({required this.token, this.page = 1});

  @override
  final String token;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'MyFeedEvent.fetchMyFeed(token: $token, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMyFeedEventImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, page);

  /// Create a copy of MyFeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMyFeedEventImplCopyWith<_$FetchMyFeedEventImpl> get copyWith =>
      __$$FetchMyFeedEventImplCopyWithImpl<_$FetchMyFeedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int page) fetchMyFeed,
  }) {
    return fetchMyFeed(token, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int page)? fetchMyFeed,
  }) {
    return fetchMyFeed?.call(token, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int page)? fetchMyFeed,
    required TResult orElse(),
  }) {
    if (fetchMyFeed != null) {
      return fetchMyFeed(token, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMyFeedEvent value) fetchMyFeed,
  }) {
    return fetchMyFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMyFeedEvent value)? fetchMyFeed,
  }) {
    return fetchMyFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMyFeedEvent value)? fetchMyFeed,
    required TResult orElse(),
  }) {
    if (fetchMyFeed != null) {
      return fetchMyFeed(this);
    }
    return orElse();
  }
}

abstract class FetchMyFeedEvent implements MyFeedEvent {
  const factory FetchMyFeedEvent(
      {required final String token, final int page}) = _$FetchMyFeedEventImpl;

  @override
  String get token;
  @override
  int get page;

  /// Create a copy of MyFeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchMyFeedEventImplCopyWith<_$FetchMyFeedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
