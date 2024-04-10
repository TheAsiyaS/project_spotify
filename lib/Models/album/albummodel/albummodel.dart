import 'package:json_annotation/json_annotation.dart';

import 'album.dart';

part 'albummodel.g.dart';

@JsonSerializable()
class Albummodel {
  @JsonKey(name: 'albums')
  List<Album>? albums;

  Albummodel({this.albums});

  factory Albummodel.fromJson(Map<String, dynamic> json) {
    return _$AlbummodelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlbummodelToJson(this);
}
