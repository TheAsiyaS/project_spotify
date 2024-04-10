import 'package:json_annotation/json_annotation.dart';

part 'restrictions.g.dart';

@JsonSerializable()
class Restrictions {
  @JsonKey(name: 'reason')
  String? reason;

  Restrictions({this.reason});

  factory Restrictions.fromJson(Map<String, dynamic> json) {
    return _$RestrictionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RestrictionsToJson(this);
}
