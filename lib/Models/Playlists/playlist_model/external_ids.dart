import 'package:json_annotation/json_annotation.dart';

part 'external_ids.g.dart';

@JsonSerializable()
class ExternalIds {
  @JsonKey(name: 'isrc')
  String? isrc;
  @JsonKey(name: 'ean')
  String? ean;
  @JsonKey(name: 'upc')
  String? upc;

  ExternalIds({this.isrc, this.ean, this.upc});

  factory ExternalIds.fromJson(Map<String, dynamic> json) {
    return _$ExternalIdsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);
}
