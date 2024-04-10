import 'package:json_annotation/json_annotation.dart';

part 'followers.g.dart';

@JsonSerializable()
class Followers {
  @JsonKey(name: 'total')
  int? total;

  Followers({this.total});

  factory Followers.fromJson(Map<String, dynamic> json) {
    return _$FollowersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}
