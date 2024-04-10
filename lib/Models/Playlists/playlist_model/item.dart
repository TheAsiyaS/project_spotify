import 'package:json_annotation/json_annotation.dart';

import 'added_by.dart';
import 'track.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: 'track')
  Track? track;

  Item({this.track});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
