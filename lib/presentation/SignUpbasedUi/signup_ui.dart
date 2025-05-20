import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/loginwidget.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class screen_signIn extends StatelessWidget {
  const screen_signIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    log(size.width.toString());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: size.height / 2.5,
                width: size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/image/premium.png'),
                        fit: BoxFit.cover,
                        opacity: 120),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [transparent, transparent, black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotationTransition(
                        turns: const AlwaysStoppedAnimation(380 / 360),
                        child: show_image(
                            borderRadius: 0,
                            size: size,
                            height: 6,
                            width: 3,
                            img_url:
                                'asset/image/some/images-removebg-preview.png'),
                      ),
                      Text(
                        'Millons of songs \nFree on spotify',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
