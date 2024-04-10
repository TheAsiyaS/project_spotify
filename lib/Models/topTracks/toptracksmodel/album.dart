import 'package:json_annotation/json_annotation.dart';

import 'artist.dart';

import 'image.dart';

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

  @JsonKey(name: 'genres')
  List<String>? genres;
  @JsonKey(name: 'label')
  String? label;
  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'album_group')
  String? albumGroup;
  @JsonKey(name: 'artists')
  List<Artist>? artists;

  Album({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.genres,
    this.label,
    this.popularity,
    this.albumGroup,
    this.artists,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
