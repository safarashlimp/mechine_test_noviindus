// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: 'category_dict')
  List<CategoryDictModel> get categoryDict =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<FeedModel> get results => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  bool get next => throw _privateConstructorUsedError;

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_dict') List<CategoryDictModel> categoryDict,
      @JsonKey(name: 'results') List<FeedModel> results,
      bool status,
      bool next});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDict = null,
    Object? results = null,
    Object? status = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      categoryDict: null == categoryDict
          ? _value.categoryDict
          : categoryDict // ignore: cast_nullable_to_non_nullable
              as List<CategoryDictModel>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_dict') List<CategoryDictModel> categoryDict,
      @JsonKey(name: 'results') List<FeedModel> results,
      bool status,
      bool next});
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDict = null,
    Object? results = null,
    Object? status = null,
    Object? next = null,
  }) {
    return _then(_$HomeModelImpl(
      categoryDict: null == categoryDict
          ? _value._categoryDict
          : categoryDict // ignore: cast_nullable_to_non_nullable
              as List<CategoryDictModel>,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {@JsonKey(name: 'category_dict')
      required final List<CategoryDictModel> categoryDict,
      @JsonKey(name: 'results') required final List<FeedModel> results,
      required this.status,
      required this.next})
      : _categoryDict = categoryDict,
        _results = results;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  final List<CategoryDictModel> _categoryDict;
  @override
  @JsonKey(name: 'category_dict')
  List<CategoryDictModel> get categoryDict {
    if (_categoryDict is EqualUnmodifiableListView) return _categoryDict;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryDict);
  }

  final List<FeedModel> _results;
  @override
  @JsonKey(name: 'results')
  List<FeedModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final bool status;
  @override
  final bool next;

  @override
  String toString() {
    return 'HomeModel(categoryDict: $categoryDict, results: $results, status: $status, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryDict, _categoryDict) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryDict),
      const DeepCollectionEquality().hash(_results),
      status,
      next);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: 'category_dict')
      required final List<CategoryDictModel> categoryDict,
      @JsonKey(name: 'results') required final List<FeedModel> results,
      required final bool status,
      required final bool next}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: 'category_dict')
  List<CategoryDictModel> get categoryDict;
  @override
  @JsonKey(name: 'results')
  List<FeedModel> get results;
  @override
  bool get status;
  @override
  bool get next;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDictModel _$CategoryDictModelFromJson(Map<String, dynamic> json) {
  return _CategoryDictModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDictModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this CategoryDictModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDictModelCopyWith<CategoryDictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDictModelCopyWith<$Res> {
  factory $CategoryDictModelCopyWith(
          CategoryDictModel value, $Res Function(CategoryDictModel) then) =
      _$CategoryDictModelCopyWithImpl<$Res, CategoryDictModel>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$CategoryDictModelCopyWithImpl<$Res, $Val extends CategoryDictModel>
    implements $CategoryDictModelCopyWith<$Res> {
  _$CategoryDictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDictModelImplCopyWith<$Res>
    implements $CategoryDictModelCopyWith<$Res> {
  factory _$$CategoryDictModelImplCopyWith(_$CategoryDictModelImpl value,
          $Res Function(_$CategoryDictModelImpl) then) =
      __$$CategoryDictModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$CategoryDictModelImplCopyWithImpl<$Res>
    extends _$CategoryDictModelCopyWithImpl<$Res, _$CategoryDictModelImpl>
    implements _$$CategoryDictModelImplCopyWith<$Res> {
  __$$CategoryDictModelImplCopyWithImpl(_$CategoryDictModelImpl _value,
      $Res Function(_$CategoryDictModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$CategoryDictModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDictModelImpl implements _CategoryDictModel {
  const _$CategoryDictModelImpl({required this.id, required this.title});

  factory _$CategoryDictModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDictModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'CategoryDictModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDictModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of CategoryDictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDictModelImplCopyWith<_$CategoryDictModelImpl> get copyWith =>
      __$$CategoryDictModelImplCopyWithImpl<_$CategoryDictModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDictModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryDictModel implements CategoryDictModel {
  const factory _CategoryDictModel(
      {required final String id,
      required final String title}) = _$CategoryDictModelImpl;

  factory _CategoryDictModel.fromJson(Map<String, dynamic> json) =
      _$CategoryDictModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;

  /// Create a copy of CategoryDictModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDictModelImplCopyWith<_$CategoryDictModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) {
  return _FeedModel.fromJson(json);
}

/// @nodoc
mixin _$FeedModel {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  FeedUserModel get user => throw _privateConstructorUsedError;

  /// Serializes this FeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedModelCopyWith<FeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedModelCopyWith<$Res> {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) then) =
      _$FeedModelCopyWithImpl<$Res, FeedModel>;
  @useResult
  $Res call(
      {int id,
      String description,
      String image,
      String video,
      FeedUserModel user});

  $FeedUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$FeedModelCopyWithImpl<$Res, $Val extends FeedModel>
    implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? image = null,
    Object? video = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FeedUserModel,
    ) as $Val);
  }

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedUserModelCopyWith<$Res> get user {
    return $FeedUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedModelImplCopyWith<$Res>
    implements $FeedModelCopyWith<$Res> {
  factory _$$FeedModelImplCopyWith(
          _$FeedModelImpl value, $Res Function(_$FeedModelImpl) then) =
      __$$FeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String description,
      String image,
      String video,
      FeedUserModel user});

  @override
  $FeedUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$FeedModelImplCopyWithImpl<$Res>
    extends _$FeedModelCopyWithImpl<$Res, _$FeedModelImpl>
    implements _$$FeedModelImplCopyWith<$Res> {
  __$$FeedModelImplCopyWithImpl(
      _$FeedModelImpl _value, $Res Function(_$FeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? image = null,
    Object? video = null,
    Object? user = null,
  }) {
    return _then(_$FeedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FeedUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedModelImpl implements _FeedModel {
  const _$FeedModelImpl(
      {required this.id,
      required this.description,
      required this.image,
      required this.video,
      required this.user});

  factory _$FeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedModelImplFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final String image;
  @override
  final String video;
  @override
  final FeedUserModel user;

  @override
  String toString() {
    return 'FeedModel(id: $id, description: $description, image: $image, video: $video, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, image, video, user);

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      __$$FeedModelImplCopyWithImpl<_$FeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedModelImplToJson(
      this,
    );
  }
}

abstract class _FeedModel implements FeedModel {
  const factory _FeedModel(
      {required final int id,
      required final String description,
      required final String image,
      required final String video,
      required final FeedUserModel user}) = _$FeedModelImpl;

  factory _FeedModel.fromJson(Map<String, dynamic> json) =
      _$FeedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  String get image;
  @override
  String get video;
  @override
  FeedUserModel get user;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedUserModel _$FeedUserModelFromJson(Map<String, dynamic> json) {
  return _FeedUserModel.fromJson(json);
}

/// @nodoc
mixin _$FeedUserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this FeedUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedUserModelCopyWith<FeedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedUserModelCopyWith<$Res> {
  factory $FeedUserModelCopyWith(
          FeedUserModel value, $Res Function(FeedUserModel) then) =
      _$FeedUserModelCopyWithImpl<$Res, FeedUserModel>;
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class _$FeedUserModelCopyWithImpl<$Res, $Val extends FeedUserModel>
    implements $FeedUserModelCopyWith<$Res> {
  _$FeedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedUserModelImplCopyWith<$Res>
    implements $FeedUserModelCopyWith<$Res> {
  factory _$$FeedUserModelImplCopyWith(
          _$FeedUserModelImpl value, $Res Function(_$FeedUserModelImpl) then) =
      __$$FeedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class __$$FeedUserModelImplCopyWithImpl<$Res>
    extends _$FeedUserModelCopyWithImpl<$Res, _$FeedUserModelImpl>
    implements _$$FeedUserModelImplCopyWith<$Res> {
  __$$FeedUserModelImplCopyWithImpl(
      _$FeedUserModelImpl _value, $Res Function(_$FeedUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$FeedUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedUserModelImpl implements _FeedUserModel {
  const _$FeedUserModelImpl({required this.id, required this.name, this.image});

  factory _$FeedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedUserModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'FeedUserModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of FeedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedUserModelImplCopyWith<_$FeedUserModelImpl> get copyWith =>
      __$$FeedUserModelImplCopyWithImpl<_$FeedUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedUserModelImplToJson(
      this,
    );
  }
}

abstract class _FeedUserModel implements FeedUserModel {
  const factory _FeedUserModel(
      {required final int id,
      required final String name,
      final String? image}) = _$FeedUserModelImpl;

  factory _FeedUserModel.fromJson(Map<String, dynamic> json) =
      _$FeedUserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of FeedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedUserModelImplCopyWith<_$FeedUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
