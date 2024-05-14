import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/album/albummodel/album.dart';
import 'package:project_spotifyclone/Models/album/i_album-repo.dart';
import 'package:project_spotifyclone/core/failures/mainFailure.dart';


part 'album_event.dart';
part 'album_state.dart';
part 'album_bloc.freezed.dart';

@injectable
class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final I_Album_Repo Obj_album_repo;
  AlbumBloc(this.Obj_album_repo) : super(AlbumState.initial()) {
    on<_Getalbumlist>((event, emit) async {
      final resultAlbum = await Obj_album_repo.getalbums();
      final emitalbumlist = resultAlbum.fold(
        (mainFailure fail) => const AlbumState(
            albumList: [], isLoading: false, iserror: true, albumsongs: []),
        (List<Album> result) => AlbumState(
            albumList: result,
            isLoading: false,
            iserror: false,
            albumsongs: state.albumsongs),
      );
      emit(emitalbumlist);
    });
    on<_Getalbum>((event, emit) async {
      final resultAlbum = await Obj_album_repo.getalbum(albumid: event.albumid);
      final emitalbum = resultAlbum.fold(
        (mainFailure fail) => const AlbumState(
            albumList: [], isLoading: false, iserror: true, albumsongs: []),
        (List<Album> result) => AlbumState(
            albumList: result,
            isLoading: false,
            iserror: false,
            albumsongs: state.albumsongs),
      );
      emit(emitalbum);
    });
    on<_Getalbumsongs>((event, emit) async {
      final resultAlbum = await Obj_album_repo.getalbumsongs();
      final emitalbumlist = resultAlbum.fold(
        (mainFailure fail) => const AlbumState(
            albumList: [], isLoading: false, iserror: true, albumsongs: []),
        (List<Album> result) => AlbumState(
            albumList: result,
            isLoading: false,
            iserror: false,
            albumsongs: result),
      );
      emit(emitalbumlist);
    });
  }
}
