import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/Playlists/playlist_model/track.dart';
import 'package:project_spotifyclone/Models/topTracks/i_toptracks_repo.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';


part 'toptracklist_event.dart';
part 'toptracklist_state.dart';
part 'toptracklist_bloc.freezed.dart';

@injectable
class ToptracklistBloc extends Bloc<ToptracklistEvent, ToptracklistState> {
  final I_Toptrack_Repo obj_i_repo_toptracks;
  ToptracklistBloc(this.obj_i_repo_toptracks)
      : super(ToptracklistState.initial()) {
    on<_Gettoptrackslist>((event, emit) async {
      final resultToptrack =
          await obj_i_repo_toptracks.getToptracks(event.artistid);
      final emittoptrack = resultToptrack.fold(
        (mainFailure fail) => const ToptracklistState(
            toptrackList: [], isLoading: false, iserror: true),
        (result) => ToptracklistState(
            toptrackList: result, isLoading: false, iserror: false),
      );
      emit(emittoptrack);
    });
  }
}
