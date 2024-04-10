import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'tracks.g.dart';

@JsonSerializable()
class Tracks {
  @JsonKey(name: 'limit')
  int? limit;
  @JsonKey(name: 'next')
  String? next;
  @JsonKey(name: 'offset')
  int? offset;
  @JsonKey(name: 'previous')
  String? previous;
  @JsonKey(name: 'total')
  int? total;
  @JsonKey(name: 'items')
  List<Item>? items;

  Tracks({
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) {
    return _$TracksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}
