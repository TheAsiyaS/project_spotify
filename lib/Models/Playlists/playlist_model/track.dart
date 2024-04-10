import 'package:json_annotation/json_annotation.dart';

import 'album.dart';
import 'artist.dart';

import 'linked_from.dart';
import 'restrictions.dart';

part 'track.g.dart';

@JsonSerializable()
class Track {
  @JsonKey(name: 'album')
  Album? album;
  @JsonKey(name: 'artists')
  List<Artist>? artists;
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;
  @JsonKey(name: 'duration_ms')
  int? durationMs;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'is_playable')
  bool? isPlayable;
  @JsonKey(name: 'linked_from')
  LinkedFrom? linkedFrom;
  @JsonKey(name: 'restrictions')
  Restrictions? restrictions;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'preview_url')
  String? previewUrl;
  @JsonKey(name: 'track_number')
  int? trackNumber;

  Track({
    this.album,
    this.artists,
    this.availableMarkets,
    this.durationMs,
    this.id,
    this.isPlayable,
    this.linkedFrom,
    this.restrictions,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
  });

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);
}
