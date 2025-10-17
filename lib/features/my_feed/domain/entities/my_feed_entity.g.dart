// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_feed_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFeedEntityImpl _$$MyFeedEntityImplFromJson(Map<String, dynamic> json) =>
    _$MyFeedEntityImpl(
      id: (json['id'] as num).toInt(),
      video: json['video'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$MyFeedEntityImplToJson(_$MyFeedEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'video': instance.video,
      'image': instance.image,
      'description': instance.description,
      'category': instance.category,
    };
