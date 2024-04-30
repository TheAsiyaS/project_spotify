
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/core/url.dart';
import 'package:project_spotifyclone/presentation/songUi/playsongui.dart';
import 'package:project_spotifyclone/widgets/iconbutton.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/listtitle.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

import '../../../core/CommonErrorText.dart';

class songs extends StatelessWidget {
  const songs({
    Key? key,
    required this.trackList,
  }) : super(key: key);

  final List<Map<String, dynamic>> trackList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 8 : 0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            // log('image: ${trackList[0]['tracks']['items'][index]['preview_url']}');
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => palysongui(
                          artistId: trackList[0]['tracks']['items'][index]
                                  ['album']['artists'][0]['id'] ??
                              error_artist_id,
                          songid: trackList[0]['tracks']['items'][index]
                                  ['album']['id'] ??
                              error_song_id,
                          artistname: trackList[0]['tracks']['items'][index]
                                  ['album']['artists'][0]['name'] ??
                              error_artist_name,
                          songname: trackList[0]['tracks']['items'][index]
                                  ['album']['name'] ??
                              error_song_name,
                          songurl: trackList[0]['tracks']['items'][index]
                                  ['preview_url'] ??
                              'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
                          songCover: trackList[0]['tracks']['items'][index]
                                  ['album']['images'][0]['url'] ??
                              noImg,
                          whoMix: '',
                        )));
              },
              child: listtitle(
                leadingWidget: show_networkimage(
                    size: size,
                    height: 5,
                    width: kIsWeb ? 20 : 5,
                    img_url: trackList[0]['tracks']['items'][index]['album']
                        ['images'][0]['url'],
                    borderRadius: 10,
                    opacity: 5,
                    color1: transparent,
                    color2: transparent),
                subtitleWidget: text(
                    stringtext: trackList[0]['tracks']['items'][index]['name']),
                titleWidget: text(
                    stringtext: trackList[0]['tracks']['items'][index]['album']
                        ['artists'][0]['name']),
                trailingWidget: iconbutton(
                  iconwidget: const Icon(
                    more_vertical,
                    size: 27,
                    color: grey,
                  ),
                  onpress: () {},
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: trackList[0]['tracks']['items'].length),
    );
  }
}
