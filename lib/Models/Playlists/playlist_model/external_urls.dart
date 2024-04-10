import 'package:json_annotation/json_annotation.dart';

part 'external_urls.g.dart';

@JsonSerializable()
class ExternalUrls {
  @JsonKey(name: 'spotify')
  String? spotify;

  ExternalUrls({this.spotify});

  factory ExternalUrls.fromJson(Map<String, dynamic> json) {
    return _$ExternalUrlsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);
}
