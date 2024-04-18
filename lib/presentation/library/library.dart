import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/image.dart';

import '../../core/colors.dart';
import '../../core/currentuser_detail.dart';
import '../../core/divider.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../core/url.dart';
import '../../widgets/Containertext.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/listtitle.dart';
import '../../widgets/rowtext.dart';
import '../../widgets/texts.dart';

class your_library extends StatelessWidget {
  const your_library({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: show_networkimage(
            color1: transparent,
            color2: transparent,
            opacity: 5,
            size: size,
            height: 12,
            width: 6,
            img_url: CurrentUserData!.photoURL ?? noImg,
            borderRadius: 50),
        title: text(
          stringtext: 'Your Library',
          fontSize: 20,
        ),
        actions: [
          iconbutton(
            iconwidget: const Icon(
              iconsearch,
              size: 27,
              color: white,
            ),
            onpress: () {},
          ),
          iconbutton(
            iconwidget: const Icon(
              add,
              size: 27,
              color: white,
            ),
            onpress: () {},
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          h20,
          containertext(
              bordercolor: white,
              textcolor: white,
              size: size,
              borderRadius: 25,
              boxtext: 'Artists',
              boxheight: 15,
              boxwidth: 3),
          divider,
          rowText(
              size: size,
              stringtext: 'Recents',
              image_url: '',
              iconornot: true,
              icon: Icons.compare_arrows_outlined,
              trailicon: Icons.auto_awesome_mosaic_outlined,
              rotatevalue: 90),
          Expanded(
              child: ListView.separated(
            itemCount: 10, //length of data
            itemBuilder: (context, index) {
              if (index >= 10) //length of data
              {
                // Check if the index is within the valid range
                return Container();
              }

              return GestureDetector(
                onTap: () {
                  //move to arist profile
                },
                child: listtitle(
                  leadingWidget: show_networkimage(
                      size: size,
                      height: 7,
                      width: 7,
                      img_url: noImg, //artist image url
                      borderRadius: 50,
                      opacity: 5,
                      color1: transparent,
                      color2: transparent),
                  trailingWidget: iconbutton(
                      iconwidget: const Icon(
                        more_vertical,
                        size: 27,
                        color: grey,
                      ),
                      onpress: () {}),
                  titleWidget: text(stringtext: 'artist name'),
                  subtitleWidget: text(stringtext: ''),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          ))
        ],
      )),
    );
  }
}
