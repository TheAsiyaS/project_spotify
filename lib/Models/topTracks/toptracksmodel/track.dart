import 'package:json_annotation/json_annotation.dart';

import 'album.dart';
import 'artist.dart';

part 'track.g.dart';

@JsonSerializable()
class Track {
  @JsonKey(name: 'album')
  Album? album;

  @JsonKey(name: 'artists')
  List<Artist>? artists;
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;
  @JsonKey(name: 'disc_number')
  int? discNumber;
  @JsonKey(name: 'duration_ms')
  int? durationMs;

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'preview_url')
  String? previewUrl;
  @JsonKey(name: 'track_number')
  int? trackNumber;

  @JsonKey(name: 'is_local')
  bool? isLocal;

  Track({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.id,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.isLocal,
  });

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);
}
