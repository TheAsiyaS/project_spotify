import 'package:json_annotation/json_annotation.dart';

part 'copyright.g.dart';

@JsonSerializable()
class Copyright {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'type')
  String? type;

  Copyright({this.text, this.type});

  factory Copyright.fromJson(Map<String, dynamic> json) {
    return _$CopyrightFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CopyrightToJson(this);
}
