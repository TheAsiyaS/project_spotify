// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
  href: json['href'] as String?,
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
  'href': instance.href,
  'total': instance.total,
};
