import 'package:json_annotation/json_annotation.dart';

import 'artist.dart';

part 'artist_lists.g.dart';

@JsonSerializable()
class ArtistLists {
  @JsonKey(name: 'artists')
  List<Artist>? artists;

  ArtistLists({this.artists});

  factory ArtistLists.fromJson(Map<String, dynamic> json) {
    return _$ArtistListsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistListsToJson(this);
}
