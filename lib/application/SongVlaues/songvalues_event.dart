part of 'songvalues_bloc.dart';

@freezed
class SongvaluesEvent with _$SongvaluesEvent {
  const factory SongvaluesEvent.getSongvalue({
    required String songimgurl,
    required String songUrl,
    required String songname,
    required String artistname,
    required String artistid,
  }) = _GetSongvalue;
}
