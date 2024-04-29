
import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/Models/Playlists/playlist_model/item.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';

abstract class I_playlist_Repo {
  Future<Either<mainFailure, List<Item>>> getPlaylistsItems(
      List<String> playListIds);
  Future<Either<mainFailure, List<Map<String, dynamic>>>> getplaylistoverview(
      List<String> playListIds);

  Future<Either<mainFailure, List<Map<String, dynamic>>>> getplaylistoverview1(
      List<String> playListIds);
}
