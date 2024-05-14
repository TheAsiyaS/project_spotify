import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/Playlists/I_playlist_repo.dart';
import 'package:project_spotifyclone/Models/Playlists/playlist_model/item.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

@injectable
class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final I_playlist_Repo obj_playlist_repo;
  PlaylistBloc(this.obj_playlist_repo) : super(PlaylistState.initial()) {
    on<_GetplaylistOverview>((event, emit) async {
      final overviewResult =
          await obj_playlist_repo.getplaylistoverview(event.playlistids);
      final overviewemit = overviewResult.fold(
          (mainFailure failure) => const PlaylistState(
              paylistoverview1: [],
              playlistItems: [],
              paylistoverview: [],
              isLoading: false,
              iserror: true), (List<Map<String, dynamic>> result) {
        return PlaylistState(
            paylistoverview1: state.paylistoverview1,
            playlistItems: state.playlistItems,
            paylistoverview: result,
            isLoading: false,
            iserror: false);
      });
      emit(overviewemit);
    });
    on<_GetplaylistItems>((event, emit) async {
      final itemsResult =
          await obj_playlist_repo.getPlaylistsItems(event.playlistids);
      final itememit = itemsResult.fold(
          (mainFailure failure) => const PlaylistState(
              paylistoverview1: [],
              playlistItems: [],
              paylistoverview: [],
              isLoading: false,
              iserror: true), (List<Item> result) {
        return PlaylistState(
            paylistoverview1: state.paylistoverview1,
            playlistItems: result,
            paylistoverview: state.paylistoverview,
            isLoading: false,
            iserror: false);
      });
      emit(itememit);
    });
    on<_GetplaylistOverview1>((event, emit) async {
      final overviewResult =
          await obj_playlist_repo.getplaylistoverview1(event.playlistids);
      final overviewemit = overviewResult.fold(
          (mainFailure failure) => const PlaylistState(
              paylistoverview1: [],
              playlistItems: [],
              paylistoverview: [],
              isLoading: false,
              iserror: true), (List<Map<String, dynamic>> result) {
        return PlaylistState(
            paylistoverview1: result,
            playlistItems: state.playlistItems,
            paylistoverview: state.paylistoverview,
            isLoading: false,
            iserror: false);
      });
      emit(overviewemit);
    });
  }
}

