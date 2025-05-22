import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_spotifyclone/Domain/provider/signIn_working_class.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/whatmusiclike.dart';
import 'package:project_spotifyclone/widgets/texts.dart';
import 'package:provider/provider.dart';

class Login_widget extends StatelessWidget {
  const Login_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: size.height / 1.99,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: size.height / 17,
                width: size.width,
              ),
              buttonInLogin(
                size: size,
                color: spotify_green,
                buttonwidget: Text(
                  'Sign up free',
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.w500, fontSize: 20),
                ),
                isbgneed: true,
                buttonID: 'free',
              ),
              buttonInLogin(
                size: size,
                color: transparent,
                buttonwidget: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.google,
                      size: 24.0,
                      color: white,
                    ),
                    w20,
                    Text(
                      'LogIn with Google',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                ),
                isbgneed: false,
                buttonID: 'google',
              ),
              buttonInLogin(
                size: size,
                color: transparent,
                buttonwidget: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                    w20,
                    Text(
                      'LogIn with Facebook',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                ),
                isbgneed: false,
                buttonID: 'facebook',
              ),
              buttonInLogin(
                size: size,
                color: transparent,
                buttonwidget: Row(
                  children: [
                    Icon(
                      Icons.phone_android_outlined,
                      size: 24.0,
                      color: white,
                    ),
                    w20,
                    Text(
                      'LogIn with Phone number',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    )
                  ],
                ),
                isbgneed: false,
                buttonID: 'phonenumber',
              ),
              h10,
              text(
                stringtext:
                    "Currently, you can sign in using your Google account.",
                color: const Color.fromARGB(255, 213, 213, 213),
              ),
            ],
          ),
        ));
  }
}

class buttonInLogin extends StatelessWidget {
  const buttonInLogin({
    super.key,
    required this.size,
    required this.color,
    required this.buttonwidget,
    required this.isbgneed,
    required this.buttonID,
  });

  final Size size;
  final Color color;
  final Widget buttonwidget;
  final bool isbgneed;
  final String buttonID;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 17,
      width: size.width,
      child: ElevatedButton(
          onPressed: () async {
            if (buttonID == 'google') {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              final result = await provider.login();
  
              result == false
                  ? ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Wait.. SignIn in process'),
                        duration:
                            const Duration(seconds: 2), // Set the duration
                      ),
                    )
                  : Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const whatmusiclike()),
                      (route) => false);
            }
          },
          style: ElevatedButton.styleFrom(
            side: BorderSide(
              width: 2.0, // Specify the border width
              color: isbgneed
                  ? transparent
                  : const Color.fromARGB(
                      119, 230, 229, 229), // Specify the border color
            ),
            backgroundColor: isbgneed ? button_green : transparent,
          ),
          child: buttonwidget),
    );
  }
}
