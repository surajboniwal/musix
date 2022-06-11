part of 'song_bloc.dart';

@freezed
class SongEvent with _$SongEvent {
  const factory SongEvent.started() = _Started;
  const factory SongEvent.setSong(Song song) = _SetSong;
  const factory SongEvent.play() = _Play;
  const factory SongEvent.pause() = _Pause;
  const factory SongEvent.stop() = _Stop;
}
