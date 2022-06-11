import 'package:json_annotation/json_annotation.dart';
import 'package:musix/data/models/musix_entity/musix_entity.dart';
import 'package:musix/data/models/song/song.dart';

part 'song_collection.g.dart';

@JsonSerializable()
class SongCollection {
  final String id;
  final String title;
  final String subtitle;
  @JsonKey(name: 'header_desc')
  final String headerDesc;
  final MusixEntityType type;
  final String image;
  @JsonKey(name: 'list_count')
  final String listCount;
  final List<Song> list;

  SongCollection({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.headerDesc,
    required this.type,
    required this.image,
    required this.listCount,
    required this.list,
  });

  factory SongCollection.fromJson(Map<String, dynamic> json) => _$SongCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$SongCollectionToJson(this);
}
