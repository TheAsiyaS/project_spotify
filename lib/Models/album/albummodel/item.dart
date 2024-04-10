import 'package:json_annotation/json_annotation.dart';

import 'artist.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: 'artists')
  List<Artist>? artists;
  @JsonKey(name: 'duration_ms')
  int? durationMs;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'is_playable')
  bool? isPlayable;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'preview_url')
  String? previewUrl;
  @JsonKey(name: 'track_number')
  int? trackNumber;
  @JsonKey(name: 'is_local')
  bool? isLocal;

  Item({
    this.artists,
    this.durationMs,
    this.id,
    this.isPlayable,
    this.name,
    this.previewUrl,
    this.trackNumber,
    this.isLocal,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
