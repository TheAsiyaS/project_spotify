part of 'list_artists_bloc.dart';

@freezed
class ListArtistsEvent with _$ListArtistsEvent {
  const factory ListArtistsEvent.getartistslist() = _Getartistslist;
  const factory ListArtistsEvent.getartist(List<String> artistid) = _Getartist;
}
