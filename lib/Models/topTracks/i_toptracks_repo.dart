import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/Models/Playlists/playlist_model/track.dart';

import '../../core/failures/mainFailure.dart';

abstract class I_Toptrack_Repo {
  Future<Either<mainFailure, List<Track>>> getToptracks(String id);
}
