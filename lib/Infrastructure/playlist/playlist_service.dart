
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/Models/Playlists/I_playlist_repo.dart';
import 'package:project_spotifyclone/Models/album/albummodel/item.dart';
import 'package:project_spotifyclone/core/api/Spotify_token_acces.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';

@LazySingleton(as: I_playlist_Repo)
class Playlistservice implements I_playlist_Repo {
  @override
  Future<Either<mainFailure, List<Item>>> getPlaylistsItems(
      List<String> playListIds) async {
    final List<Item> resultplaylist = [];
    final String Access_token = await getSpotifyAccessToken();
    final dio = Dio();
    for (final playlistId in playListIds) {
      final String url = 'https://api.spotify.com/v1/playlists/$playlistId';
      final Map<String, String> headers = {
        'Authorization': 'Bearer $Access_token'
      };

      try {
        final response = await dio.get(
          url,
          options: Options(headers: headers),
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final playlist_result = (response.data['tracks']['items'] as List)
              .map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList();
          resultplaylist.addAll(playlist_result);
        } else {
          return left(const mainFailure.serverFailure());
        }
      } catch (e) {
        return left(const mainFailure.clientFailure());
      }
    }

    return right(resultplaylist);
  }

  @override
  Future<Either<mainFailure, List<Map<String, dynamic>>>> getplaylistoverview(
      List<String> playListIds) async {
    final access_token = await getSpotifyAccessToken();

    final List<Map<String, dynamic>> playlistcommon = [];
    final dio = Dio();
    for (final playlistId in playListIds) {
      final String url = 'https://api.spotify.com/v1/playlists/$playlistId';
      final Map<String, String> headers = {
        'Authorization': 'Bearer $access_token'
      };

      try {
        final response = await dio.get(
          url,
          options: Options(headers: headers),
        );

        if (response.statusCode == 200) {
          playlistcommon.add({
            'name': response.data['name'],
            'description': response.data['description'],
            'images': response.data['images'][0]['url'],
            'id': response.data['id'],
          });
          //log('length : ${response.data['name']}');
        } else {
          return left(const mainFailure.clientFailure());
        }
      } catch (e) {
        return left(const mainFailure.serverFailure());
      }
    }

    return right(playlistcommon);
  }

  @override
  Future<Either<mainFailure, List<Map<String, dynamic>>>> getplaylistoverview1(
      List<String> playListIds) async {
    final access_token = await getSpotifyAccessToken();

    final List<Map<String, dynamic>> playlistcommon = [];
    final dio = Dio();
    for (final playlistId in playListIds) {
      final String url = 'https://api.spotify.com/v1/playlists/$playlistId';
      final Map<String, String> headers = {
        'Authorization': 'Bearer $access_token'
      };

      try {
        final response = await dio.get(
          url,
          options: Options(headers: headers),
        );

        if (response.statusCode == 200) {
          playlistcommon.add({
            'name': response.data['name'],
            'description': response.data['description'],
            'images': response.data['images'][0]['url'],
            'id': response.data['id'],
          });
          //log('length : ${response.data['name']}');
        } else {
          return left(const mainFailure.clientFailure());
        }
      } catch (e) {
        return left(const mainFailure.serverFailure());
      }
    }

    return right(playlistcommon);
  }
}
