import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/colors.dart';
import 'widgets/NavigationBar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: black,
            brightness: Brightness.dark,
            appBarTheme: const AppBarTheme(backgroundColor: black)),
        home: navigationBar());
  }
}
