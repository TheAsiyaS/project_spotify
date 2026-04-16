// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'playlist_bloc.dart';

@freezed 
abstract class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.getplaylistOverview(
      {required List<String> playlistids}) = _GetplaylistOverview;
  const factory PlaylistEvent.getplaylistItems(
      {required List<String> playlistids}) = _GetplaylistItems;
  const factory PlaylistEvent.getplaylistOverview1(
      {required List<String> playlistids}) = _GetplaylistOverview1;
}
