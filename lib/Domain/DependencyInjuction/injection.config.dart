// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:project_spotifyclone/application/Album/album_bloc.dart'
    as _i903;
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart'
    as _i242;
import 'package:project_spotifyclone/application/playlistBloc/playlist_bloc.dart'
    as _i679;
import 'package:project_spotifyclone/application/Search/search_bloc.dart'
    as _i658;
import 'package:project_spotifyclone/application/SongVlaues/songvalues_bloc.dart'
    as _i75;
import 'package:project_spotifyclone/application/TopTrack/toptracklist_bloc.dart'
    as _i66;
import 'package:project_spotifyclone/Infrastructure/Album/albumlist_service.dart'
    as _i29;
import 'package:project_spotifyclone/Infrastructure/Artist_list/Artists_service.dart'
    as _i523;
import 'package:project_spotifyclone/Infrastructure/playlist/playlist_service.dart'
    as _i506;
import 'package:project_spotifyclone/Infrastructure/Search/search_service.dart'
    as _i225;
import 'package:project_spotifyclone/Infrastructure/TopTracks/toptrack_service.dart'
    as _i324;
import 'package:project_spotifyclone/Models/album/i_album-repo.dart' as _i1055;
import 'package:project_spotifyclone/Models/Artist_list/I_artist_list_repo.dart'
    as _i814;
import 'package:project_spotifyclone/Models/Playlists/I_playlist_repo.dart'
    as _i184;
import 'package:project_spotifyclone/Models/Search/i_search_repo.dart' as _i107;
import 'package:project_spotifyclone/Models/topTracks/i_toptracks_repo.dart'
    as _i1021;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i75.SongvaluesBloc>(() => _i75.SongvaluesBloc());
    gh.lazySingleton<_i184.I_playlist_Repo>(() => _i506.Playlistservice());
    gh.lazySingleton<_i107.I_Search_Repo>(() => _i225.SearchRepo());
    gh.factory<_i658.SearchBloc>(
      () => _i658.SearchBloc(gh<_i107.I_Search_Repo>()),
    );
    gh.lazySingleton<_i1055.I_Album_Repo>(() => _i29.AlbumsRepo());
    gh.lazySingleton<_i814.I_Artists_Repo>(() => _i523.ArtistsRepo());
    gh.lazySingleton<_i1021.I_Toptrack_Repo>(() => _i324.ToptrackRepo());
    gh.factory<_i242.ListArtistsBloc>(
      () => _i242.ListArtistsBloc(gh<_i814.I_Artists_Repo>()),
    );
    gh.factory<_i903.AlbumBloc>(
      () => _i903.AlbumBloc(gh<_i1055.I_Album_Repo>()),
    );
    gh.factory<_i679.PlaylistBloc>(
      () => _i679.PlaylistBloc(gh<_i184.I_playlist_Repo>()),
    );
    gh.factory<_i66.ToptracklistBloc>(
      () => _i66.ToptracklistBloc(gh<_i1021.I_Toptrack_Repo>()),
    );
    return this;
  }
}
