
import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/Models/album/albummodel/artist.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';

abstract class I_Artists_Repo {
  Future<Either<mainFailure, List<Artist>>> getArtistList();
  Future<Either<mainFailure, List<Artist>>> getArtist(List<String> Artist_id);
}
