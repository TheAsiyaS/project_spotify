part of 'album_bloc.dart';

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState({
    required List<Album> albumList,
      required List<Album> albumsongs,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory AlbumState.initial() =>
      const AlbumState(albumList: [], iserror: false, isLoading: false, albumsongs: []);
}


