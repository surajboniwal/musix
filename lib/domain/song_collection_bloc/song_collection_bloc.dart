import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musix/data/models/api_response/api_response.dart';
import 'package:musix/data/models/musix_entity/musix_entity.dart';
import 'package:musix/data/models/song_collection/song_collection.dart';
import 'package:musix/data/repository/saavn_repository.dart';
import 'package:palette_generator/palette_generator.dart';

part 'song_collection_event.dart';
part 'song_collection_state.dart';
part 'song_collection_bloc.freezed.dart';

class SongCollectionBloc extends Bloc<SongCollectionEvent, SongCollectionState> {
  final SaavnRepository _saavnRepository;

  Color color = Colors.black;

  SongCollectionBloc(this._saavnRepository) : super(_Initial()) {
    on<SongCollectionEvent>((event, emit) async {
      if (event is _Load) {
        emit(SongCollectionState.loading());
        final songCollection = await _saavnRepository.fetchSongCollection(
          event.entity.type.name,
          event.entity.permaUrl.split('/').last,
        );

        if (songCollection.status == Status.ERROR) {
          emit(SongCollectionState.error(songCollection.message));
          return;
        }

        PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
            CachedNetworkImageProvider(songCollection.data.image));
        color = paletteGenerator.dominantColor?.color ?? Colors.black;
        if (color.computeLuminance() > 0.5) {
          color = HSLColor.fromColor(color).withLightness(0.40).toColor();
        }
        emit(SongCollectionState.data(songCollection.data));
      }
    });
  }
}
