// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toptracksmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Toptracksmodel _$ToptracksmodelFromJson(Map<String, dynamic> json) =>
    Toptracksmodel(
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ToptracksmodelToJson(Toptracksmodel instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
    };
