// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'songvalues_bloc.dart';

@freezed
abstract class SongvaluesState with _$SongvaluesState {
  const factory SongvaluesState({
    required String songimgurl,
    required String songUrl,
    required String songname,
    required String artistname,
    required String artistid,
    @Default(false) bool isPlaying,
    @Default(false) bool fullScreenPlayerOpen,
  }) = _Initial;
  factory SongvaluesState.initial() => const SongvaluesState(
        songimgurl: '',
        songname: '',
        artistname: '',
        artistid: '',
        songUrl: '',
        isPlaying: false,
        fullScreenPlayerOpen: false,
      );
}
