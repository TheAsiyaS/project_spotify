import 'package:json_annotation/json_annotation.dart';

import 'track.dart';

part 'toptracksmodel.g.dart';

@JsonSerializable()
class Toptracksmodel {
  @JsonKey(name: 'tracks')
  List<Track>? tracks;

  Toptracksmodel({this.tracks});

  factory Toptracksmodel.fromJson(Map<String, dynamic> json) {
    return _$ToptracksmodelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToptracksmodelToJson(this);
}
