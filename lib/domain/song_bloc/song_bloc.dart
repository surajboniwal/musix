import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/song/song.dart';

part 'song_event.dart';
part 'song_state.dart';
part 'song_bloc.freezed.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  SongBloc() : super(_Initial()) {
    on<SongEvent>((event, emit) {
      event.when(
        started: () {},
        setSong: (Song song) {
          emit(SongState.song(song));
        },
        play: () {},
        pause: () {},
        stop: () {},
      );
    });
  }
}
