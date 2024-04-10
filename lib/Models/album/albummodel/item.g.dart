// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      durationMs: json['duration_ms'] as int?,
      id: json['id'] as String?,
      isPlayable: json['is_playable'] as bool?,
      name: json['name'] as String?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: json['track_number'] as int?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'artists': instance.artists,
      'duration_ms': instance.durationMs,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'name': instance.name,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'is_local': instance.isLocal,
    };
