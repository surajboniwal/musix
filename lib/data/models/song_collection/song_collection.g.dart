// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SongCollection _$SongCollectionFromJson(Map<String, dynamic> json) =>
    SongCollection(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      headerDesc: json['header_desc'] as String,
      type: $enumDecode(_$MusixEntityTypeEnumMap, json['type']),
      image: json['image'] as String,
      listCount: json['list_count'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SongCollectionToJson(SongCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'header_desc': instance.headerDesc,
      'type': _$MusixEntityTypeEnumMap[instance.type],
      'image': instance.image,
      'list_count': instance.listCount,
      'list': instance.list,
    };

const _$MusixEntityTypeEnumMap = {
  MusixEntityType.playlist: 'playlist',
  MusixEntityType.chart: 'chart',
  MusixEntityType.album: 'album',
  MusixEntityType.song: 'song',
};
