
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/Models/album/albummodel/album.dart';
import 'package:project_spotifyclone/Models/album/i_album-repo.dart';
import 'package:project_spotifyclone/core/Ids.dart';
import 'package:project_spotifyclone/core/api/Spotify_token_acces.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';
import 'dart:developer';

@LazySingleton(as: I_Album_Repo)
class AlbumsRepo implements I_Album_Repo {
  @override
  Future<Either<mainFailure, List<Album>>> getalbums() async {
    final String accessToken = await getSpotifyAccessToken();
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      )).get(
          'https://api.spotify.com/v1/albums?ids=${album_cartoon.join(',')}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final albumList = (response.data['albums'] as List).map((e) {
          return Album.fromJson(e);
        }).toList();
log('album list : ${albumList[0].tracks!.items![0].previewUrl}');
        return right(albumList);
      } else {
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      return left(const mainFailure.clientFailure());
    }
  }  

  @override
  Future<Either<mainFailure, List<Album>>> getalbum(
      {required List<String> albumid}) async {
    final String accessToken = await getSpotifyAccessToken();
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      )).get('https://api.spotify.com/v1/albums?ids=${albumid.join(',')}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final albumList = (response.data['albums'] as List).map((e) {
          return Album.fromJson(e);
        }).toList();

        return right(albumList);
      } else {
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      return left(const mainFailure.clientFailure());
    }
  }

  @override
  Future<Either<mainFailure, List<Album>>> getalbumsongs() async {
    final String accessToken = await getSpotifyAccessToken();
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      )).get('https://api.spotify.com/v1/albums?ids=${album_songs.join(',')}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final albumList = (response.data['albums'] as List).map((e) {
          return Album.fromJson(e);
        }).toList();

        return right(albumList);
      } else {
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      return left(const mainFailure.clientFailure());
    }
  }
}
