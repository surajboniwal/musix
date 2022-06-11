part of 'song_bloc.dart';

@freezed
class SongState with _$SongState {
  const factory SongState.initial() = _Initial;
  const factory SongState.song(Song song) = _Song;
  const factory SongState.play(Song song) = _PlayState;
  const factory SongState.pause(Song song) = _PauseState;
}
