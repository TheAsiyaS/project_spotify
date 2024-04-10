import 'package:json_annotation/json_annotation.dart';

import 'external_urls.dart';
import 'followers.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner {
  @JsonKey(name: 'flowers')
  Followers? followers;
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'display_name')
  String? displayName;

  Owner({
    this.followers,
    this.id,
    this.displayName,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
