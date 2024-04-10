// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddedBy _$AddedByFromJson(Map<String, dynamic> json) => AddedBy(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      id: json['id'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$AddedByToJson(AddedBy instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'id': instance.id,
      'uri': instance.uri,
    };
