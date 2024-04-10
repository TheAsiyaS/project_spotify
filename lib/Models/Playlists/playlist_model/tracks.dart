import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'tracks.g.dart';

@JsonSerializable()
class Tracks {
  @JsonKey(name: 'limit')
  int? limit;
  @JsonKey(name: 'next')
  @JsonKey(name: 'total')
  int? total; //no.of songs(total)
  @JsonKey(name: 'items')
  List<Item>? items;

  Tracks({
    this.limit,
    this.total,
    this.items,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) {
    return _$TracksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}
