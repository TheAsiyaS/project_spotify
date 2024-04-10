import 'package:json_annotation/json_annotation.dart';

part 'followers.g.dart';

@JsonSerializable()
class Followers {
  String? href;
  int? total;

  Followers({this.href, this.total});

  factory Followers.fromJson(Map<String, dynamic> json) {
    return _$FollowersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}
