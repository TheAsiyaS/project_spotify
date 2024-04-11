import 'package:flutter/material.dart';
import 'package:project_spotifyclone/Domain/provider/signIn_working_class.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/widgets/rowtext.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

import 'package:provider/provider.dart';

class login_widget extends StatelessWidget {
  const login_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Card(
            elevation: 10,
            color: const Color.fromARGB(117, 115, 115, 115),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                        stringtext: 'Login',
                        fontSize: 40,
                      )),
                  const Divider(
                    color: green,
                    endIndent: 20,
                    indent: 20,
                  ),
                  h10,
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        hintText: ' Enter email adress.........',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: white,
                        )),
                  ),
                  const Divider(),
                  h10,
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        hintText: ' Enter Passoword......',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: white,
                        )),
                  ),
                  const Divider(),
                  GestureDetector(
                      onTap: () {},
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: text(
                            stringtext: 'Forget password?',
                            color: const Color.fromARGB(255, 192, 191, 191),
                          ))),
                ],
              ),
            ),
          ),
          h50,
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: GestureDetector(
              onTap: () async {
                final provider = await Provider.of<GoogleSignInProvider>(
                    context,
                    listen: false);
                provider.login();
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //         builder: (context) => const whatmusiclike()),
                //     (route) => false);
              },
              child: rowText(
                iconornot: false,
                size: size,
                image_url:
                    'asset/image/some/google_318-278809-removebg-preview.png',
                stringtext: 'LogIn with google',
                height_img: 15,
                width_img: 8,
                color: spotify_green,
                fontSize: 25,
              ),
            ),
          ),
          h10,
          text(
            stringtext: 'you can logIn with e-mail account',
            color: grey,
          ),
        ],
      ),
    );
  }
}
