// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFeedEntity _$MyFeedEntityFromJson(Map<String, dynamic> json) {
  return _MyFeedEntity.fromJson(json);
}

/// @nodoc
mixin _$MyFeedEntity {
  int get id => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this MyFeedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyFeedEntityCopyWith<MyFeedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFeedEntityCopyWith<$Res> {
  factory $MyFeedEntityCopyWith(
          MyFeedEntity value, $Res Function(MyFeedEntity) then) =
      _$MyFeedEntityCopyWithImpl<$Res, MyFeedEntity>;
  @useResult
  $Res call(
      {int id,
      String video,
      String image,
      String description,
      String category});
}

/// @nodoc
class _$MyFeedEntityCopyWithImpl<$Res, $Val extends MyFeedEntity>
    implements $MyFeedEntityCopyWith<$Res> {
  _$MyFeedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? video = null,
    Object? image = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFeedEntityImplCopyWith<$Res>
    implements $MyFeedEntityCopyWith<$Res> {
  factory _$$MyFeedEntityImplCopyWith(
          _$MyFeedEntityImpl value, $Res Function(_$MyFeedEntityImpl) then) =
      __$$MyFeedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String video,
      String image,
      String description,
      String category});
}

/// @nodoc
class __$$MyFeedEntityImplCopyWithImpl<$Res>
    extends _$MyFeedEntityCopyWithImpl<$Res, _$MyFeedEntityImpl>
    implements _$$MyFeedEntityImplCopyWith<$Res> {
  __$$MyFeedEntityImplCopyWithImpl(
      _$MyFeedEntityImpl _value, $Res Function(_$MyFeedEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? video = null,
    Object? image = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_$MyFeedEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFeedEntityImpl implements _MyFeedEntity {
  const _$MyFeedEntityImpl(
      {required this.id,
      required this.video,
      required this.image,
      required this.description,
      required this.category});

  factory _$MyFeedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFeedEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String video;
  @override
  final String image;
  @override
  final String description;
  @override
  final String category;

  @override
  String toString() {
    return 'MyFeedEntity(id: $id, video: $video, image: $image, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFeedEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, video, image, description, category);

  /// Create a copy of MyFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFeedEntityImplCopyWith<_$MyFeedEntityImpl> get copyWith =>
      __$$MyFeedEntityImplCopyWithImpl<_$MyFeedEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFeedEntityImplToJson(
      this,
    );
  }
}

abstract class _MyFeedEntity implements MyFeedEntity {
  const factory _MyFeedEntity(
      {required final int id,
      required final String video,
      required final String image,
      required final String description,
      required final String category}) = _$MyFeedEntityImpl;

  factory _MyFeedEntity.fromJson(Map<String, dynamic> json) =
      _$MyFeedEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get video;
  @override
  String get image;
  @override
  String get description;
  @override
  String get category;

  /// Create a copy of MyFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyFeedEntityImplCopyWith<_$MyFeedEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
