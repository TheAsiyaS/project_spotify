// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albummodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Albummodel _$AlbummodelFromJson(Map<String, dynamic> json) => Albummodel(
      albums: (json['albums'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbummodelToJson(Albummodel instance) =>
    <String, dynamic>{
      'albums': instance.albums,
    };
