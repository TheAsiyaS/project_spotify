import 'package:bloc/bloc.dart';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/Artist_list/I_artist_list_repo.dart';
import 'package:project_spotifyclone/Models/Artist_list/model/artist_lists/artist.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';

part 'list_artists_event.dart';
part 'list_artists_state.dart';
part 'list_artists_bloc.freezed.dart';

@injectable
class ListArtistsBloc extends Bloc<ListArtistsEvent, ListArtistsState> {
  final I_Artists_Repo Obj_artist_repo;
  ListArtistsBloc(this.Obj_artist_repo) : super(ListArtistsState.initial()) {
    on<_Getartistslist>((event, emit) async {
      final resultArtists = await Obj_artist_repo.getArtistList();
      final emitartists = resultArtists.fold(
        (mainFailure fail) => const ListArtistsState(
            artist: [], artistList: [], isLoading: false, iserror: true),
        (List<Artist> result) => ListArtistsState(
            artist: state.artist,
            artistList: result,
            isLoading: false,
            iserror: false),
      );
      emit(emitartists);
    });
    on<_Getartist>((event, emit) async {
      final resultArtists = await Obj_artist_repo.getArtist(event.artistid);
      final emitartists = resultArtists.fold(
        (mainFailure fail) => const ListArtistsState(
            artist: [], artistList: [], isLoading: false, iserror: true),
        (List<Artist> result) => ListArtistsState(
            artist: result,
            artistList: state.artistList,
            isLoading: false,
            iserror: false),
      );
      emit(emitartists);
    });
  }
}
