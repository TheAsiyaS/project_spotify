import 'package:json_annotation/json_annotation.dart';

import 'followers.dart';
import 'image.dart';
import 'owner.dart';
import 'tracks.dart';

part 'playlist_model.g.dart';

@JsonSerializable()
class PlaylistModel {
  @JsonKey(name: 'collaborative')
  bool? collaborative;
  @JsonKey(name: 'description')
  String? description; //how many artist include
  @JsonKey(name: 'followers')
  Followers? followers;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'images')
  List<Image>? images; //playlist cover url
  @JsonKey(name: 'name')
  String? name; //who's mix
  @JsonKey(name: 'owner')
  Owner? owner;
  @JsonKey(name: 'snapshot_id')
  String? snapshotId;
  @JsonKey(name: 'tracks')
  Tracks? tracks; //no of total songs in tracks

  PlaylistModel({
    this.collaborative,
    this.description,
    this.followers,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.snapshotId,
    this.tracks,
  });

  factory PlaylistModel.fromJson(Map<String, dynamic> json) {
    return _$PlaylistModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaylistModelToJson(this);
}
