part of 'song_collection_bloc.dart';

@freezed
class SongCollectionState with _$SongCollectionState {
  const factory SongCollectionState.initial() = _Initial;
  const factory SongCollectionState.loading() = _Loading;
  const factory SongCollectionState.data(SongCollection collection) = _Data;
  const factory SongCollectionState.error(String error) = _Error;
}
