import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

import '../../core/buttons.dart';
import '../../core/colors.dart';
import '../../core/divider.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../widgets/rowtext.dart';

class permium extends StatelessWidget {
  const permium({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final premiumqaulity = [
      'Download to listen offline without wi-fi',
      'Music without ad interrupyions',
      '2x higher sound quality then our free plan',
      'Play songs in any order, with unlimted skips',
      'Cancel monthly plans online anytime',
    ];
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 2.5,
                  width: size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'asset/image/Screenshot 2023-04-26 111844.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                rowText(
                  size: size,
                  stringtext: 'Premium',
                  fontSize: 16,
                  image_url: '',
                  iconornot: true,
                  icon: FontAwesomeIcons.spotify,
                )
              ],
            ),
            text(
              stringtext: 'Try premium free for 1 month',
              maxline: 2,
              fontSize: 35,
            ),
            Container_button(
              height: size.height / 12.5,
              width: size.width / 1.2,
              buttontext: 'GET PREMIUM',
              id: 'premium',
              color1: white,
              color2: white,
              textcolor: black,
              fontsize: 20,
            ),
            h10,
            text(
              stringtext:
                  'Only 119/- month after. Offer only for users who have new to Premium',
              color: grey,
              fontSize: 12,
            ),
            GestureDetector(
                onTap: () {
                  log('click');
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: text(stringtext: 'Terms and condtion apply'))),
            h20,
            Container(
              height: size.height / 2.2,
              width: size.width / 1.05,
              decoration: BoxDecoration(
                  color: transparentgrey,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    h30,
                    text(
                      stringtext: 'Why join Premium?',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    h10,
                    divider,
                    h10,
                    Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return rowText(
                                size: size,
                                stringtext: premiumqaulity[index],
                                image_url: '',
                                iconornot: true,
                                icon: check,
                                iconclor: spotify_green,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return h30;
                            },
                            itemCount: premiumqaulity.length)),
                  ],
                ),
              ),
            ),
            h50,
            Container(
              height: size.height / 7.5,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  color: transparentgrey,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    text(
                      stringtext: 'Spotify Free ',
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    spacer,
                    text(
                      stringtext: 'CURRENT PLAN',
                      color: grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),
            h50,
            Align(
              alignment: Alignment.topLeft,
              child: text(
                stringtext: 'Pick your Premium',
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
            h50,
            Container(
              height: size.height / 2.4,
              width: size.width / 1.04,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 78, 78, 78),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    h30,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 90,
                            width: 220,
                            child: text(
                              stringtext: 'Spotify premium for Samsung',
                              fontSize: 25,
                              maxline: 2,
                            )),
                        Column(
                          children: [
                            text(
                              stringtext: 'Free',
                              fontSize: 30,
                            ),
                            text(
                              stringtext: 'For 3 months ',
                              fontSize: 16,
                            ),
                          ],
                        )
                      ],
                    ),
                    h20,
                    text(
                      stringtext:
                          'Premium Indvidual free for 3 months on your Samsung device',
                      maxline: 2,
                      fontSize: 20,
                    ),
                    h20,
                    Container_button(
                      height: size.height / 12.5,
                      width: size.width / 1.5,
                      buttontext: 'TRY 3 MONTHS FREE',
                      id: 'Freemonth',
                      fontsize: 20,
                      textcolor: black,
                      color1: white,
                      color2: white,
                    ),
                    h10,
                    Row(
                      children: [
                        Expanded(
                          child: text(
                            stringtext:
                                'Only 119/- month after period. First time Spotify Premium subscribers only.',
                            maxline: 2,
                            color: grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: text(stringtext: 'Terms apply'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
