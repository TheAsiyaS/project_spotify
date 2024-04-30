import 'dart:developer';


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/core/url.dart';
import 'package:project_spotifyclone/widgets/iconbutton.dart';
import 'package:project_spotifyclone/widgets/listtitle.dart';
import 'package:project_spotifyclone/widgets/texts.dart';
import '../../profile/artist_profile.dart';

class Artists extends StatelessWidget {
  const Artists({
    Key? key,
    required this.artistList,
  }) : super(key: key);
  final List<Map<String, dynamic>> artistList;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    log('length : ${artistList[0]['artists']['items'].length}');

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 5 : 0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              log('name : ${artistList[0]['artists']['items'][index]['name']}');
              log('length : ${artistList[0]['artists']['items'][index]['images'][0]['url']}');
              return GestureDetector(
                onTap: () {
                  //log('flowers : ${artistList [0]['artists']['items'][index]['followers']['total']}');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => artist_profile(
                          artistId: artistList[0]['artists']['items'][index]
                                  ['id'] ??
                              'no id',
                          artistname: artistList[0]['artists']['items'][index]
                                  ['name'] ??
                              error_artist_name,
                          profileimag: artistList[0]['artists']['items'][index]
                                  ['images'][0]['url'] ??
                              noImg,
                          monthlylisterners: artistList[0]['artists']['items']
                                  [index]['followers']['total']
                              .toString(),
                          views: '90,567,897')));
                },
                child: listtitle(
                  leadingWidget: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(artistList[0]['artists']
                        ['items'][index]['images'][0]['url']),
                  ),
                  subtitleWidget: text(stringtext: ''),
                  titleWidget: text(stringtext: artistList[0]['artists']['items'][index]['name']),
                  trailingWidget: iconbutton(
                    iconwidget: const Icon(
                      more_vertical,
                      size: 27,
                      color: black,
                    ),
                    onpress: () {},
                  ),
                
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: artistList[0]['artists']['items'].length),
      ),
    );
  }
}
