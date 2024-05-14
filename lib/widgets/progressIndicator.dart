import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/widgets/texts.dart';


class progress extends StatelessWidget {
  const progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SpinKitFadingGrid(
              size: 70,
              color: darkgreen,
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
