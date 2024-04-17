import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/colors.dart';
import '../../core/size.dart';
import '../../widgets/NavigationBar.dart';
import '../../widgets/texts.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const navigationBar()),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SpinKitFadingGrid(
              size: 70,
              color: green,
            ),
            h20,
            text(
              stringtext: 'Finding music for you...',
              fontSize: 25,
            )
          ],
        ),
      ),
    );
  }
}
