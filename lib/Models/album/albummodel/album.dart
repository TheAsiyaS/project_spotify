import 'package:json_annotation/json_annotation.dart';

import 'artist.dart';

import 'image.dart';

import 'tracks.dart';

part 'album.g.dart';

@JsonSerializable()
class Album {
  @JsonKey(name: 'album_type')
  String? albumType;
  @JsonKey(name: 'total_tracks')
  int? totalTracks;
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;

  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'images')
  List<Image>? images;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'release_date_precision')
  String? releaseDatePrecision;

  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'uri')
  String? uri;
  @JsonKey(name: 'genres')
  List<String>? genres;
  @JsonKey(name: 'label')
  String? label;
  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'artists')
  List<Artist>? artists;
  @JsonKey(name: 'tracks')
  Tracks? tracks;

  Album({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.type,
    this.uri,
    this.genres,
    this.label,
    this.popularity,
    this.artists,
    this.tracks,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
