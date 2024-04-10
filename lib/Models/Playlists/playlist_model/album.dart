import 'package:json_annotation/json_annotation.dart';

import 'artist.dart';
import 'copyright.dart';
import 'external_urls.dart';
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
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'images')
  List<Image>? images;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'album')
  String? type;
  @JsonKey(name: 'uri')
  String? uri;
  @JsonKey(name: 'copyrights')
  List<Copyright>? copyrights;

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
    this.externalUrls,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.type,
    this.uri,
    this.copyrights,
    this.popularity,
    this.albumGroup,
    this.artists,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
