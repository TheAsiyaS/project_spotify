import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/Domain/DependencyInjuction/injection.dart';
import 'package:project_spotifyclone/application/Album/album_bloc.dart';
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart';
import 'package:project_spotifyclone/application/Search/search_bloc.dart';
import 'package:project_spotifyclone/application/SongVlaues/songvalues_bloc.dart';
import 'package:project_spotifyclone/application/playlistBloc/playlist_bloc.dart';

import 'application/TopTrack/toptracklist_bloc.dart';
import 'core/colors.dart';
import 'widgets/NavigationBar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyBHHgw5mINO2uCLzb6EElFjSN_jUMdZyRI',
          appId: '1:353992947181:web:2761512b584a1fbed523e4',
          messagingSenderId: '353992947181',
          projectId: 'project-spotify-ed3ad'));
  runApp(const MyApp());
}    


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider( 
      providers: [
        BlocProvider(create: (ctx) => getIt<ListArtistsBloc>()),
        BlocProvider(create: (ctx) => getIt<PlaylistBloc>()),
        BlocProvider(create: (ctx) => getIt<AlbumBloc>()),
        BlocProvider(create: (ctx) => getIt<ToptracklistBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => SongvaluesBloc()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: black,
              brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(backgroundColor: black)),
          home: const navigationBar()),
    );
  }
}  
