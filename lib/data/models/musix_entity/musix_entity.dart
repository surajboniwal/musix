import 'package:json_annotation/json_annotation.dart';

part 'musix_entity.g.dart';

enum MusixEntityType {
  @JsonValue('playlist')
  playlist,
  @JsonValue('chart')
  chart,
  @JsonValue('album')
  album,
  @JsonValue('song')
  song,
}

@JsonSerializable()
class MusixEntity {
  final String id;
  final String title;
  final String subtitle;
  final MusixEntityType type;
  final String image;
  @JsonKey(name: 'perma_url')
  final String permaUrl;

  MusixEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.image,
    required this.permaUrl,
  });

  factory MusixEntity.fromJson(Map<String, dynamic> json) => _$MusixEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MusixEntityToJson(this);
}
