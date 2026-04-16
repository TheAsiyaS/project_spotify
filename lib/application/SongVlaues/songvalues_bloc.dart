import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'songvalues_event.dart';
part 'songvalues_state.dart';
part 'songvalues_bloc.freezed.dart';

@injectable
class SongvaluesBloc extends Bloc<SongvaluesEvent, SongvaluesState> {
  SongvaluesBloc() : super(SongvaluesState.initial()) {
    on<_GetSongvalue>((event, emit) {
      emit(state.copyWith(
        artistid: event.artistid,
        artistname: event.artistname,
        songUrl: event.songUrl,
        songimgurl: event.songimgurl,
        songname: event.songname,
        isPlaying: true,
        fullScreenPlayerOpen: true,
      ));
    });
    on<_UpdatePlayback>(
        (event, emit) => emit(state.copyWith(isPlaying: event.isPlaying)));
    on<_SetFullScreenPlayerOpen>((event, emit) =>
        emit(state.copyWith(fullScreenPlayerOpen: event.open)));
  }
}
