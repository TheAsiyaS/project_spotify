import 'package:dartz/dartz.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';

import 'albummodel/album.dart';

abstract class I_Album_Repo {
  Future<Either<mainFailure, List<Album>>> getalbums();
  Future<Either<mainFailure, List<Album>>> getalbum(
      {required List<String> albumid});
  Future<Either<mainFailure, List<Album>>> getalbumsongs();
}
