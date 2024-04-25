import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../domain/provider/signIn_working_class.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/texts.dart';
import '../signIn/signup_ui.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    String greeting = '';   
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12) {
      greeting = 'Good Morning';
    } else if (hour >= 12 && hour < 17) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton<String>(
          icon: CircleAvatar(
            radius: 18,
            backgroundColor: green,
            child: text(
              stringtext: 'u',
              color: black,
            ),
          ),
          onSelected: (value) async {
            if (value == 'Setting') {
            } else if (value == 'LogOut') {
              await GoogleSignInProvider().logout();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => const screen_signIn()),
                  (route) => false);
            } else if (value == 'Profile') {}
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem<String>(
                value: 'Setting',
                child: Text('Setting'),
              ),
              const PopupMenuItem<String>(
                value: 'Profile',
                child: Text('Profile'),
              ),
              const PopupMenuItem<String>(
                value: 'LogOut',
                child: Text('LogOut'),
              ),
            ];
          },
        ),
        title: text(
          maxline: 1,
          stringtext: greeting,
          fontSize: 25,
        ),
        actions: [
          iconbutton(
            iconwidget: const Icon(
              notification,
              size: 27,
              color: white,
            ),
            onpress: () {},
          ),
          iconbutton(
            iconwidget: const Icon(
              history,
              size: 27,
              color: white,
            ),
            onpress: () {},
          ),
          iconbutton(
            iconwidget: const Icon(
              Setting,
              size: 27,
              color: white,
            ),
            onpress: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                stringtext: 'To get you started',
                fontSize: 25,
              ),
              h20,
              text(
                maxline: 1,
                stringtext: 'Popular Albums',
                fontSize: 25,
              ),
              h30,
              h30,
              text(
                maxline: 1,
                stringtext: 'Suggested artists',
                fontSize: 25,
              ),
              h20,
              h30,
              text(
                maxline: 1,
                stringtext: 'Made for username',
                fontSize: 25,
              ),
              h20,
              text(
                maxline: 1,
                stringtext: 'Recommand for today',
                fontSize: 25,
              ),
              h20,
              text(
                maxline: 1,
                stringtext: 'Recommanded audio',
                fontSize: 25,
              ),
              h20,
            ],
          ),
        ),
      ),
    );
  }
}
