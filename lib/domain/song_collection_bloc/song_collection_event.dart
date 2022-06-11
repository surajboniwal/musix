part of 'song_collection_bloc.dart';

@freezed
class SongCollectionEvent with _$SongCollectionEvent {
  const factory SongCollectionEvent.started() = _Started;
  const factory SongCollectionEvent.load(MusixEntity entity) = _Load;
}
