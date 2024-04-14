part of 'list_artists_bloc.dart';

@freezed
class ListArtistsState with _$ListArtistsState {
  const factory ListArtistsState({
    required List<Artist> artistList,
    required List<Artist> artist,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory ListArtistsState.initial() => const ListArtistsState(
      artistList: [], iserror: false, isLoading: false, artist: []);
}
