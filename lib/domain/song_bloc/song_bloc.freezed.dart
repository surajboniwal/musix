// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SongEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Song song) setSong,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSong value) setSong,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongEventCopyWith<$Res> {
  factory $SongEventCopyWith(SongEvent value, $Res Function(SongEvent) then) =
      _$SongEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongEventCopyWithImpl<$Res> implements $SongEventCopyWith<$Res> {
  _$SongEventCopyWithImpl(this._value, this._then);

  final SongEvent _value;
  // ignore: unused_field
  final $Res Function(SongEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SongEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Song song) setSong,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSong value) setSong,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SongEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SetSongCopyWith<$Res> {
  factory _$$_SetSongCopyWith(
          _$_SetSong value, $Res Function(_$_SetSong) then) =
      __$$_SetSongCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class __$$_SetSongCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$$_SetSongCopyWith<$Res> {
  __$$_SetSongCopyWithImpl(_$_SetSong _value, $Res Function(_$_SetSong) _then)
      : super(_value, (v) => _then(v as _$_SetSong));

  @override
  _$_SetSong get _value => super._value as _$_SetSong;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$_SetSong(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_SetSong implements _SetSong {
  const _$_SetSong(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'SongEvent.setSong(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSong &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$$_SetSongCopyWith<_$_SetSong> get copyWith =>
      __$$_SetSongCopyWithImpl<_$_SetSong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Song song) setSong,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return setSong(song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
  }) {
    return setSong?.call(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (setSong != null) {
      return setSong(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSong value) setSong,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
  }) {
    return setSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
  }) {
    return setSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (setSong != null) {
      return setSong(this);
    }
    return orElse();
  }
}

abstract class _SetSong implements SongEvent {
  const factory _SetSong(final Song song) = _$_SetSong;

  Song get song => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetSongCopyWith<_$_SetSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayCopyWith<$Res> {
  factory _$$_PlayCopyWith(_$_Play value, $Res Function(_$_Play) then) =
      __$$_PlayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$$_PlayCopyWith<$Res> {
  __$$_PlayCopyWithImpl(_$_Play _value, $Res Function(_$_Play) _then)
      : super(_value, (v) => _then(v as _$_Play));

  @override
  _$_Play get _value => super._value as _$_Play;
}

/// @nodoc

class _$_Play implements _Play {
  const _$_Play();

  @override
  String toString() {
    return 'SongEvent.play()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Play);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Song song) setSong,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSong value) setSong,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements SongEvent {
  const factory _Play() = _$_Play;
}

/// @nodoc
abstract class _$$_PauseCopyWith<$Res> {
  factory _$$_PauseCopyWith(_$_Pause value, $Res Function(_$_Pause) then) =
      __$$_PauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$$_PauseCopyWith<$Res> {
  __$$_PauseCopyWithImpl(_$_Pause _value, $Res Function(_$_Pause) _then)
      : super(_value, (v) => _then(v as _$_Pause));

  @override
  _$_Pause get _value => super._value as _$_Pause;
}

/// @nodoc

class _$_Pause implements _Pause {
  const _$_Pause();

  @override
  String toString() {
    return 'SongEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Song song) setSong,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSong value) setSong,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements SongEvent {
  const factory _Pause() = _$_Pause;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$$_StopCopyWith<$Res> {
  __$$_StopCopyWithImpl(_$_Stop _value, $Res Function(_$_Stop) _then)
      : super(_value, (v) => _then(v as _$_Stop));

  @override
  _$_Stop get _value => super._value as _$_Stop;
}

/// @nodoc

class _$_Stop implements _Stop {
  const _$_Stop();

  @override
  String toString() {
    return 'SongEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Song song) setSong,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Song song)? setSong,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSong value) setSong,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSong value)? setSong,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements SongEvent {
  const factory _Stop() = _$_Stop;
}

/// @nodoc
mixin _$SongState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Song song) song,
    required TResult Function(Song song) play,
    required TResult Function(Song song) pause,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Song value) song,
    required TResult Function(_PlayState value) play,
    required TResult Function(_PauseState value) pause,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongStateCopyWith<$Res> {
  factory $SongStateCopyWith(SongState value, $Res Function(SongState) then) =
      _$SongStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongStateCopyWithImpl<$Res> implements $SongStateCopyWith<$Res> {
  _$SongStateCopyWithImpl(this._value, this._then);

  final SongState _value;
  // ignore: unused_field
  final $Res Function(SongState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SongState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Song song) song,
    required TResult Function(Song song) play,
    required TResult Function(Song song) pause,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Song value) song,
    required TResult Function(_PlayState value) play,
    required TResult Function(_PauseState value) pause,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SongState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SongCopyWith<$Res> {
  factory _$$_SongCopyWith(_$_Song value, $Res Function(_$_Song) then) =
      __$$_SongCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class __$$_SongCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements _$$_SongCopyWith<$Res> {
  __$$_SongCopyWithImpl(_$_Song _value, $Res Function(_$_Song) _then)
      : super(_value, (v) => _then(v as _$_Song));

  @override
  _$_Song get _value => super._value as _$_Song;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$_Song(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_Song implements _Song {
  const _$_Song(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'SongState.song(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Song &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$$_SongCopyWith<_$_Song> get copyWith =>
      __$$_SongCopyWithImpl<_$_Song>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Song song) song,
    required TResult Function(Song song) play,
    required TResult Function(Song song) pause,
  }) {
    return song(this.song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
  }) {
    return song?.call(this.song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this.song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Song value) song,
    required TResult Function(_PlayState value) play,
    required TResult Function(_PauseState value) pause,
  }) {
    return song(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
  }) {
    return song?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this);
    }
    return orElse();
  }
}

abstract class _Song implements SongState {
  const factory _Song(final Song song) = _$_Song;

  Song get song => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SongCopyWith<_$_Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayStateCopyWith<$Res> {
  factory _$$_PlayStateCopyWith(
          _$_PlayState value, $Res Function(_$_PlayState) then) =
      __$$_PlayStateCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class __$$_PlayStateCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements _$$_PlayStateCopyWith<$Res> {
  __$$_PlayStateCopyWithImpl(
      _$_PlayState _value, $Res Function(_$_PlayState) _then)
      : super(_value, (v) => _then(v as _$_PlayState));

  @override
  _$_PlayState get _value => super._value as _$_PlayState;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$_PlayState(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_PlayState implements _PlayState {
  const _$_PlayState(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'SongState.play(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayState &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$$_PlayStateCopyWith<_$_PlayState> get copyWith =>
      __$$_PlayStateCopyWithImpl<_$_PlayState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Song song) song,
    required TResult Function(Song song) play,
    required TResult Function(Song song) pause,
  }) {
    return play(this.song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
  }) {
    return play?.call(this.song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this.song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Song value) song,
    required TResult Function(_PlayState value) play,
    required TResult Function(_PauseState value) pause,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _PlayState implements SongState {
  const factory _PlayState(final Song song) = _$_PlayState;

  Song get song => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PlayStateCopyWith<_$_PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PauseStateCopyWith<$Res> {
  factory _$$_PauseStateCopyWith(
          _$_PauseState value, $Res Function(_$_PauseState) then) =
      __$$_PauseStateCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class __$$_PauseStateCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements _$$_PauseStateCopyWith<$Res> {
  __$$_PauseStateCopyWithImpl(
      _$_PauseState _value, $Res Function(_$_PauseState) _then)
      : super(_value, (v) => _then(v as _$_PauseState));

  @override
  _$_PauseState get _value => super._value as _$_PauseState;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$_PauseState(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_PauseState implements _PauseState {
  const _$_PauseState(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'SongState.pause(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PauseState &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$$_PauseStateCopyWith<_$_PauseState> get copyWith =>
      __$$_PauseStateCopyWithImpl<_$_PauseState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Song song) song,
    required TResult Function(Song song) play,
    required TResult Function(Song song) pause,
  }) {
    return pause(this.song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
  }) {
    return pause?.call(this.song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Song song)? song,
    TResult Function(Song song)? play,
    TResult Function(Song song)? pause,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this.song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Song value) song,
    required TResult Function(_PlayState value) play,
    required TResult Function(_PauseState value) pause,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Song value)? song,
    TResult Function(_PlayState value)? play,
    TResult Function(_PauseState value)? pause,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _PauseState implements SongState {
  const factory _PauseState(final Song song) = _$_PauseState;

  Song get song => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PauseStateCopyWith<_$_PauseState> get copyWith =>
      throw _privateConstructorUsedError;
}
