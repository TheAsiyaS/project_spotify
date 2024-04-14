part of 'album_bloc.dart';

@freezed
class AlbumEvent with _$AlbumEvent {
  const factory AlbumEvent.getalbumlist() = _Getalbumlist;
   const factory AlbumEvent.getalbum({required List<String> albumid}) = _Getalbum;
  const factory AlbumEvent.getalbumsongs() = _Getalbumsongs;
}
