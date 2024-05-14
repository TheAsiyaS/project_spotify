import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/Playlists/playlist_model/track.dart';
import 'package:project_spotifyclone/Models/topTracks/i_toptracks_repo.dart';
import 'package:project_spotifyclone/core/api/Spotify_token_acces.dart';

import '../../core/failures/mainFailure.dart';

@LazySingleton(as: I_Toptrack_Repo)
class ToptrackRepo implements I_Toptrack_Repo {
  @override
  Future<Either<mainFailure, List<Track>>> getToptracks(String id) async {
    final String accessToken = await getSpotifyAccessToken();
    try {
      final Response response = await Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      )).get('https://api.spotify.com/v1/artists/$id/top-tracks?country=KR');
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final trackList = (response.data['tracks'] as List).map((e) {
          return Track.fromJson(e);
        }).toList();

        return right(trackList);
      } else {
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      return left(const mainFailure.clientFailure());
    }
  }
}
