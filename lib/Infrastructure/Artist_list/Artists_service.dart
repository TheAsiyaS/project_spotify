
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/Models/Artist_list/I_artist_list_repo.dart';
import 'package:project_spotifyclone/Models/Artist_list/model/artist_lists/artist.dart';
import 'package:project_spotifyclone/core/Ids.dart';
import 'package:project_spotifyclone/core/api/Spotify_token_acces.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';



@LazySingleton(as: I_Artists_Repo)
class ArtistsRepo implements I_Artists_Repo {
  @override
  Future<Either<mainFailure, List<Artist>>> getArtist(
      List<String> artistid) async {
    final String Access_token = await getSpotifyAccessToken();
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $Access_token',
        },
      )).get('https://api.spotify.com/v1/artists?ids=${artistid.join(',')}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Artists_list = (response.data['artists'] as List).map((e) {
          return Artist.fromJson(e);
        }).toList();

        return right(Artists_list);
      } else {
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      return left(const mainFailure.clientFailure());
    }
  }

  @override
  Future<Either<mainFailure, List<Artist>>> getArtistList() async {
    final String Access_token = await getSpotifyAccessToken();
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $Access_token',
        },
      )).get('https://api.spotify.com/v1/artists?ids=${artists_id.join(',')}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Artists_list = (response.data['artists'] as List).map((e) {
          return Artist.fromJson(e);
        }).toList();

        return right(Artists_list);
      } else {
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      return left(const mainFailure.clientFailure());
    }
  }
}
