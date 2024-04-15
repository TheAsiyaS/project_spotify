// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/Album/album_bloc.dart' as _i18;
import '../../application/Artists/list_artists_bloc.dart' as _i13;
import '../../application/playlistBloc/playlist_bloc.dart' as _i14;
import '../../application/Search/search_bloc.dart' as _i15;
import '../../application/SongVlaues/songvalues_bloc.dart' as _i16;
import '../../application/TopTrack/toptracklist_bloc.dart' as _i17;
import '../../Infrastructure/Album/albumlist_service.dart' as _i4;
import '../../Infrastructure/Artist_list/Artists_service.dart' as _i6;
import '../../Infrastructure/playlist/playlist_service.dart' as _i12;
import '../../Infrastructure/Search/search_service.dart' as _i8;
import '../../Infrastructure/TopTracks/toptrack_service.dart' as _i10;
import '../../Models/album/i_album-repo.dart' as _i3;
import '../../Models/Artist_list/I_artist_list_repo.dart' as _i5;
import '../../Models/Playlists/I_playlist_repo.dart' as _i11;
import '../../Models/Search/i_search_repo.dart' as _i7;
import '../../Models/topTracks/i_toptracks_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.I_Album_Repo>(() => _i4.AlbumsRepo());
  gh.lazySingleton<_i5.I_Artists_Repo>(() => _i6.ArtistsRepo());
  gh.lazySingleton<_i7.I_Search_Repo>(() => _i8.SearchRepo());
  gh.lazySingleton<_i9.I_Toptrack_Repo>(() => _i10.ToptrackRepo());
  gh.lazySingleton<_i11.I_playlist_Repo>(() => _i12.Playlistservice());
  gh.factory<_i13.ListArtistsBloc>(
      () => _i13.ListArtistsBloc(get<_i5.I_Artists_Repo>()));
  gh.factory<_i14.PlaylistBloc>(
      () => _i14.PlaylistBloc(get<_i11.I_playlist_Repo>()));
  gh.factory<_i15.SearchBloc>(() => _i15.SearchBloc(get<_i7.I_Search_Repo>()));
  gh.factory<_i16.SongvaluesBloc>(() => _i16.SongvaluesBloc());
  gh.factory<_i17.ToptracklistBloc>(
      () => _i17.ToptracklistBloc(get<_i9.I_Toptrack_Repo>()));
  gh.factory<_i18.AlbumBloc>(() => _i18.AlbumBloc(get<_i3.I_Album_Repo>()));
  return get;
}
