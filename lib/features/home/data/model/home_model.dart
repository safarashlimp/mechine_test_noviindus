// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'home_model.freezed.dart';
// part 'home_model.g.dart';

// @freezed
// class HomeModel with _$HomeModel {
//   const factory HomeModel({
//     @JsonKey(name: "category_dict") required List<CategoryModel> categoryDict,
//     @JsonKey(name: "results") required List<FeedModel> results,
//     @JsonKey(name: "status") required bool status,
//   }) = _HomeModel;

//   factory HomeModel.fromJson(Map<String, dynamic> json) =>
//       _$HomeModelFromJson(json);
// }

// @freezed
// class CategoryModel with _$CategoryModel {
//   const factory CategoryModel({
//     required String id,
//     required String title,
//   }) = _CategoryModel;

//   factory CategoryModel.fromJson(Map<String, dynamic> json) =>
//       _$CategoryModelFromJson(json);
// }

// @freezed
// class FeedModel with _$FeedModel {
//   const factory FeedModel({
//     required int id,
//     required String description,
//     required String image,
//     required String video,
//     required UserModel user,
//   }) = _FeedModel;

//   factory FeedModel.fromJson(Map<String, dynamic> json) =>
//       _$FeedModelFromJson(json);
// }

// @freezed
// class UserModel with _$UserModel {
//   const factory UserModel({
//     required int id,
//     required String name,
//     String? image,
//   }) = _UserModel;

//   factory UserModel.fromJson(Map<String, dynamic> json) =>
//       _$UserModelFromJson(json);
// }
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: 'category_dict') required List<CategoryDictModel> categoryDict,
    @JsonKey(name: 'results') required List<FeedModel> results,
    required bool status,
    required bool next,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class CategoryDictModel with _$CategoryDictModel {
  const factory CategoryDictModel({
    required String id,
    required String title,
  }) = _CategoryDictModel;

  factory CategoryDictModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDictModelFromJson(json);
}

@freezed
class FeedModel with _$FeedModel {
  const factory FeedModel({
    required int id,
    required String description,
    required String image,
    required String video,
    required FeedUserModel user,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
}

@freezed
class FeedUserModel with _$FeedUserModel {
  const factory FeedUserModel({
    required int id,
    required String name,
    String? image,
  }) = _FeedUserModel;

  factory FeedUserModel.fromJson(Map<String, dynamic> json) =>
      _$FeedUserModelFromJson(json);
}
