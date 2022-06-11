import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musix/domain/song_bloc/song_bloc.dart';

import '../musix_entity/musix_entity.dart';

part 'song.g.dart';

@JsonSerializable()
class Song {
  final String id;
  final String title;
  final String subtitle;
  final MusixEntityType type;
  final String image;
  @JsonKey(name: 'perma_url')
  final String permaUrl;

  Song({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.image,
    required this.permaUrl,
  });

  void play(BuildContext context) {
    context.read<SongBloc>().add(SongEvent.setSong(this));
  }

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);

  Map<String, dynamic> toJson() => _$SongToJson(this);
}
