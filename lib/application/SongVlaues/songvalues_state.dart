part of 'songvalues_bloc.dart';

@freezed
class SongvaluesState with _$SongvaluesState {
  const factory SongvaluesState({
    required String songimgurl,
    required String songUrl,
    required String songname,
    required String artistname,
    required String artistid,
  }) = _Initial;
  factory SongvaluesState.initial() => const SongvaluesState(
        songimgurl:
            "https://i.scdn.co/image/ab67616d0000b273ef57183066d6cac0cabb85c6",
        songname:
            'Dreamers [Music from the FIFA World Cup Qatar 2022 Official Soundtrack]',
        artistname: 'Jung Kook',
        artistid: '6HaGTQPmzraVmaVxvz6EUc',
        songUrl:
            'https://p.scdn.co/mp3-preview/d8d0dec53c0859d639987215fbcd66b29a897dd8?cid=0b297fa8a249464ba34f5861d4140e58',
      );
}
