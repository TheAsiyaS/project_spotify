
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/Search/i_search_repo.dart';
import 'package:project_spotifyclone/core/api/Spotify_token_acces.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';



@LazySingleton(as: I_Search_Repo)
class SearchRepo implements I_Search_Repo {
  @override
  Future<Either<mainFailure, List<Map<String, dynamic>>>> searchitem(
      {required String searchquery}) async {
    final String Access_token = await getSpotifyAccessToken();
    final List<Map<String, dynamic>> playlistcommon = [];
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $Access_token',
        },
      )).get(
          'https://api.spotify.com/v1/search?q=$searchquery&type=album,artist,track,playlist');
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        playlistcommon.add({
          'tracks': response.data['tracks'],
          'artists': response.data['artists'],
          'albums': response.data['albums'],
          'playlists': response.data['playlists'],
          'shows': response.data['shows'],  
          'episodes': response.data['episodes'],
          'audiobooks': response.data['audiobooks'],
        });
        return right(playlistcommon);
      } else {
      
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
     
      return left(const mainFailure.clientFailure());
    }
  }
}
