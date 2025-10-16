// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      categoryDict: (json['category_dict'] as List<dynamic>)
          .map((e) => CategoryDictModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: (json['results'] as List<dynamic>)
          .map((e) => FeedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool,
      next: json['next'] as bool,
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'category_dict': instance.categoryDict,
      'results': instance.results,
      'status': instance.status,
      'next': instance.next,
    };

_$CategoryDictModelImpl _$$CategoryDictModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDictModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CategoryDictModelImplToJson(
        _$CategoryDictModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$FeedModelImpl _$$FeedModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedModelImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      image: json['image'] as String,
      video: json['video'] as String,
      user: FeedUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedModelImplToJson(_$FeedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'image': instance.image,
      'video': instance.video,
      'user': instance.user,
    };

_$FeedUserModelImpl _$$FeedUserModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedUserModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$FeedUserModelImplToJson(_$FeedUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
