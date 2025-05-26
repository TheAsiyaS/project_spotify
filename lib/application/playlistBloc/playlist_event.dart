part of 'playlist_bloc.dart';

@freezed 
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.getplaylistOverview(
      {required List<String> playlistids}) = _GetplaylistOverview;
  const factory PlaylistEvent.getplaylistItems(
      {required List<String> playlistids}) = _GetplaylistItems;
  const factory PlaylistEvent.getplaylistOverview1(
      {required List<String> playlistids}) = _GetplaylistOverview1;
}
