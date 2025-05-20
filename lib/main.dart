import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/Domain/DependencyInjuction/injection.dart';
import 'package:project_spotifyclone/Domain/provider/signIn_working_class.dart';
import 'package:project_spotifyclone/application/Album/album_bloc.dart';
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart';
import 'package:project_spotifyclone/application/Search/search_bloc.dart';
import 'package:project_spotifyclone/application/SongVlaues/songvalues_bloc.dart';
import 'package:project_spotifyclone/application/playlistBloc/playlist_bloc.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/signup_ui.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/websignIn.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';
import 'package:provider/provider.dart';

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
          home: const SplashScreen()),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulating a delay of 3 seconds using Future.delayed
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return ChangeNotifierProvider(
          create: ((context) => GoogleSignInProvider()),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSignedIn) {
                return const Center(
                  child: snapwaiting(color: spotify_green),
                );
              } else if (snapshot.hasData) {
                return const navigationBar();
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: snapwaiting(color: spotify_green),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: snapwaiting(color: red),
                );
              } else {
                return kIsWeb ? const webSignIn() : const screen_signIn();
              }
            },
          ),
        );
      }));
    });

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'asset/image/some/images-removebg-preview.png'),
                  fit: BoxFit.cover)),
        ),
      )),
    );
  }
}
