import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/loginwidget.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class webSignIn extends StatelessWidget {
  const webSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color.fromARGB(255, 2, 104, 63),
        child: SafeArea(
            child: Row(
          children: [
            Container(
              height: size.height,
              width: size.width / 2.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 170,
                      image: AssetImage(
                          'asset/image/some/Screenshot 2023-04-15 114532.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: size.height,
              width: size.width / 1.67,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )), // screens that only shows for new users
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  text(
                    stringtext: 'Login',
                    fontSize: 40,
                    color: black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width / 9),
                    child: const login_widget(),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
