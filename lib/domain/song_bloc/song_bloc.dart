import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../data/models/song/song.dart';

part 'song_event.dart';
part 'song_state.dart';
part 'song_bloc.freezed.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  Color color = Colors.black;

  SongBloc() : super(_Initial()) {
    on<SongEvent>((event, emit) async {
      await event.when(
        started: () {},
        setSong: (Song song) async {
          PaletteGenerator paletteGenerator =
              await PaletteGenerator.fromImageProvider(CachedNetworkImageProvider(song.image));
          color = paletteGenerator.dominantColor?.color ?? Colors.black;
          if (color.computeLuminance() > 0.5) {
            color = HSLColor.fromColor(color).withLightness(0.40).toColor();
          }
          emit(SongState.song(song));
        },
        play: () {},
        pause: () {},
        stop: () {},
      );
    });
  }
}
