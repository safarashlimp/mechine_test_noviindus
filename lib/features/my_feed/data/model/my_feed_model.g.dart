// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFeedModelImpl _$$MyFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$MyFeedModelImpl(
      id: (json['id'] as num).toInt(),
      video: json['video'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
      category: json['category'] as String? ?? '',
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$MyFeedModelImplToJson(_$MyFeedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'video': instance.video,
      'image': instance.image,
      'description': instance.description,
      'category': instance.category,
      'message': instance.message,
    };
