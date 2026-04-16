// ignore_for_file: non_abstract_class_inherits_abstract_member

part of 'songvalues_bloc.dart';

@freezed
abstract class SongvaluesEvent with _$SongvaluesEvent {
  const factory SongvaluesEvent.getSongvalue({
    required String songimgurl,
    required String songUrl,
    required String songname,
    required String artistname,
    required String artistid,
  }) = _GetSongvalue;
  const factory SongvaluesEvent.updatePlayback({required bool isPlaying}) =
      _UpdatePlayback;
  const factory SongvaluesEvent.setFullScreenPlayerOpen({required bool open}) =
      _SetFullScreenPlayerOpen;
}
