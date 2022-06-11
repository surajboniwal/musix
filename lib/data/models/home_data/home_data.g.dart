// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      newTrending: (json['new_trending'] as List<dynamic>)
          .map((e) => MusixEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPlaylists: (json['top_playlists'] as List<dynamic>)
          .map((e) => MusixEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      newAlbums: (json['new_albums'] as List<dynamic>)
          .map((e) => MusixEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'new_trending': instance.newTrending,
      'top_playlists': instance.topPlaylists,
      'new_albums': instance.newAlbums,
    };
