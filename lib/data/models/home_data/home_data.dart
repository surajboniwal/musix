import 'package:json_annotation/json_annotation.dart';
import 'package:musix/data/models/musix_entity/musix_entity.dart';

part 'home_data.g.dart';

@JsonSerializable()
class HomeData {
  @JsonKey(name: 'new_trending')
  final List<MusixEntity> newTrending;
  @JsonKey(name: 'top_playlists')
  final List<MusixEntity> topPlaylists;
  @JsonKey(name: 'new_albums')
  final List<MusixEntity> newAlbums;

  HomeData({
    required this.newTrending,
    required this.topPlaylists,
    required this.newAlbums,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
