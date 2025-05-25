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
import 'package:project_spotifyclone/core/api/api_and_ids.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/signup_ui.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/websignIn.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';
import 'package:provider/provider.dart';

import 'application/TopTrack/toptracklist_bloc.dart';
import 'core/colors.dart';
import 'widgets/NavigationBar.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SpotifyAlbumTracks(),
    );
  }
}

class SpotifyAlbumTracks extends StatefulWidget {
  const SpotifyAlbumTracks({super.key});

  @override
  State<SpotifyAlbumTracks> createState() => _SpotifyAlbumTracksState();
}

class _SpotifyAlbumTracksState extends State<SpotifyAlbumTracks> {
  List<String> albumIds = [
    "4aawyAB9vmqN3uQ7FjRGTy",
    "446ROKmKfpEwkbi2SjELVX",
    "1WwkojG9sjMSrFVz4D51W0",
    "5KF4xCxDD8ip003hoatFT9",
    "4Qhs9M8b7MafoxTPhfG6Hq",
    "4vaaL8cnVy5KBJqbEPD8RF",
    "382ObEPsp2rxGrnsizN5TX"

    // add more album IDs here
  ];
final clientnew ='8dd952004a5742cbb863346a09a9da92';
final sceretclientnew= '0771160e4cfc4a9fbc786a65aedc5bd7';
  Future<void> fetchMultipleAlbumsTracks() async {
    if (accessToken == null) return;

    List<Map<String, String?>> allTracks = [];

    for (String albumId in albumIds) {
      final tracksUrl =
          Uri.parse("https://api.spotify.com/v1/albums/$albumId/tracks?market=US");
      final response = await http.get(
        tracksUrl,
        headers: {"Authorization": "Bearer $accessToken"},
      );

      if (response.statusCode == 200) {
        final jsonBody = json.decode(response.body);
        final items = jsonBody["items"] as List<dynamic>;

        // Add tracks to allTracks
        allTracks.addAll(items.map<Map<String, String?>>((track) {
          return {
            "name": track["name"],
            "preview_url": track["preview_url"],
            "album_id": albumId,
          };
        }));
      } else {
        print(
            "Failed to fetch tracks for album $albumId: ${response.statusCode}");
      }
    }

    setState(() {
      tracks = allTracks;
    });
  }

  String? accessToken;
  List<Map<String, String?>> tracks = [];
  String error = "";

  @override
  void initState() {
    super.initState();
    fetchAccessToken();
  }

  Future<void> fetchAccessToken() async {
    final authUrl = Uri.parse("https://accounts.spotify.com/api/token");
    final response = await http.post(authUrl, body: {
      "grant_type": "client_credentials",
      "client_id": clientnew,
      "client_secret": sceretclientnew,
    });

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      accessToken = jsonBody["access_token"];
      fetchMultipleAlbumsTracks();
    } else {
      setState(() {
        error = "Failed to get access token: ${response.statusCode}";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spotify Album Tracks")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: error.isNotEmpty
            ? Text(error, style: const TextStyle(color: Colors.red))
            : tracks.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: tracks.length,
                    itemBuilder: (context, index) {
                      final track = tracks[index];
                      return ListTile(
                        title: Text(track["name"] ?? "Unknown"),
                        subtitle: Text(
                            track["preview_url"] ?? "No preview available"),
                      );
                    },
                  ),
      ),
    );
  }
}





// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await configInjection();
//   await Firebase.initializeApp(
//       options: const FirebaseOptions(
//           apiKey: 'AIzaSyBHHgw5mINO2uCLzb6EElFjSN_jUMdZyRI', 
//           appId: '1:353992947181:web:2761512b584a1fbed523e4',
//           messagingSenderId: '353992947181',
//           projectId: 'project-spotify-ed3ad'));
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override 
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (ctx) => getIt<ListArtistsBloc>()),
//         BlocProvider(create: (ctx) => getIt<PlaylistBloc>()),
//         BlocProvider(create: (ctx) => getIt<AlbumBloc>()),
//         BlocProvider(create: (ctx) => getIt<ToptracklistBloc>()),
//         BlocProvider(create: (ctx) => getIt<SearchBloc>()),
//         BlocProvider(create: (ctx) => SongvaluesBloc()),
//       ],
//       child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//               scaffoldBackgroundColor: black,
//               brightness: Brightness.dark,
//               appBarTheme: const AppBarTheme(backgroundColor: black)),
//           home: const SplashScreen()),
//     );
//   }
// }

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Simulating a delay of 3 seconds using Future.delayed
//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
//         return ChangeNotifierProvider(
//           create: ((context) => GoogleSignInProvider()),
//           child: StreamBuilder(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (context, snapshot) {
//               final provider = Provider.of<GoogleSignInProvider>(context);

//               if (provider.isSignedIn) {
//                 return const Center(
//                   child: snapwaiting(color: spotify_green),
//                 );
//               } else if (snapshot.hasData) {
//                 return const navigationBar();
//               } else if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(
//                   child: snapwaiting(color: spotify_green),
//                 );
//               } else if (snapshot.hasError) {
//                 return const Center(
//                   child: snapwaiting(color: red),
//                 );
//               } else {
//                 return kIsWeb ? const webSignIn() : const screen_signIn();
//               }
//             },
//           ),
//         );
//       }));
//     });

//     return Scaffold(
//       body: SafeArea(
//           child: Center(
//         child: Container(
//           height: 200,
//           width: 200,
//           decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(
//                       'asset/image/some/images-removebg-preview.png'),
//                   fit: BoxFit.cover)),
//         ),
//       )),
//     );
//   }
// }
