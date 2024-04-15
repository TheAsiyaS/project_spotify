part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    required List<Item> playlistItems,
    required List<Map<String, dynamic>> paylistoverview,
    required List<Map<String, dynamic>> paylistoverview1,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory PlaylistState.initial() => const PlaylistState(
        playlistItems: [],
        paylistoverview: [],
        iserror: false,
        isLoading: false,
        paylistoverview1: [],   
      );
}

