// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'album_bloc.dart';

@freezed
abstract class AlbumState with _$AlbumState {
  const factory AlbumState({
    required List<Album> albumList,
      required List<Album> albumsongs,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory AlbumState.initial() =>
      const AlbumState(albumList: [], iserror: false, isLoading: false, albumsongs: []);
}


