import 'dart:developer';

import 'package:flutter/material.dart';
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
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage(
            //          'asset/image/premium.png'),
            //     fit: BoxFit.cover, 
            //     opacity: 120),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
            )),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const text_spotify(fontSize: 40),
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
                ],
              ),
              SizedBox(
                height: size.height / 8,
              ),
              const Login_widget()
            ],
          ),
        ),
      ),
    );
  }
}
