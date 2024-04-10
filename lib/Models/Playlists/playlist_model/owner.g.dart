// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      followers: json['flowers'] == null
          ? null
          : Followers.fromJson(json['flowers'] as Map<String, dynamic>),
      id: json['id'] as String?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'flowers': instance.followers,
      'id': instance.id,
      'display_name': instance.displayName,
    };
