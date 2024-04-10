import 'package:json_annotation/json_annotation.dart';

import 'external_urls.dart';

part 'added_by.g.dart';

@JsonSerializable()
class AddedBy {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'uri')
  String? uri;

  AddedBy({
    this.externalUrls,
    this.id,
    this.uri,
  });

  factory AddedBy.fromJson(Map<String, dynamic> json) {
    return _$AddedByFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddedByToJson(this);
}
