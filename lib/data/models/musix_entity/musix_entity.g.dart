// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musix_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusixEntity _$MusixEntityFromJson(Map<String, dynamic> json) => MusixEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      type: $enumDecode(_$MusixEntityTypeEnumMap, json['type']),
      image: json['image'] as String,
      permaUrl: json['perma_url'] as String,
    );

Map<String, dynamic> _$MusixEntityToJson(MusixEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': _$MusixEntityTypeEnumMap[instance.type],
      'image': instance.image,
      'perma_url': instance.permaUrl,
    };

const _$MusixEntityTypeEnumMap = {
  MusixEntityType.playlist: 'playlist',
  MusixEntityType.chart: 'chart',
  MusixEntityType.album: 'album',
  MusixEntityType.song: 'song',
};
