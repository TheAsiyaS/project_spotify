import 'package:json_annotation/json_annotation.dart';
import 'followers.dart';
import 'image.dart';

part 'artist.g.dart';

@JsonSerializable()
class Artist {
  @JsonKey(name: 'followers')
  Followers? followers;
  @JsonKey(name: 'genres')
  List<String>? genres;
  @JsonKey(name: 'href')
  String? href;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'images')
  List<Image>? images;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'uri')
  String? uri;

  Artist({
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}
