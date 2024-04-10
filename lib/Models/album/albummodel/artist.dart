import 'package:json_annotation/json_annotation.dart';

import 'image.dart';

part 'artist.g.dart';

@JsonSerializable()
class Artist {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'images')
  List<Image>? images;
  @JsonKey(name: 'name')
  String? name;

  Artist({
    this.id,
    this.images,
    this.name,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}
