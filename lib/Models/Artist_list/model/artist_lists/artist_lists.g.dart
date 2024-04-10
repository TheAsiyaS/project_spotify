// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_lists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistLists _$ArtistListsFromJson(Map<String, dynamic> json) => ArtistLists(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistListsToJson(ArtistLists instance) =>
    <String, dynamic>{
      'artists': instance.artists,
    };
