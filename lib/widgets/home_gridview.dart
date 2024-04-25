import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/Models/album/albummodel/album.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/core/url.dart';
import 'package:project_spotifyclone/widgets/circleavatar.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/listtitle.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

import '../Models/Artist_list/model/artist_lists/artist.dart';
import '../core/colors.dart';
import '../core/size.dart';

class gridview_home extends StatelessWidget {
  const gridview_home({
    Key? key,
    required this.size,
    required this.id,
    required this.itemCount,
    required this.verticalor,
    required this.lines,
    required this.isradio,
    required this.mImageheight,
    required this.wImgheight,
    required this.stacktext,
    required this.artistdatalist,
    required this.playlistoverview,
    required this.albumsList,
    required this.albumlist,
  }) : super(key: key);

  final Size size;
  final String id;
  final int itemCount;
  final bool verticalor; //Vertical or horizontal
  final int lines;
  final bool isradio;
  final double mImageheight;
  final double wImgheight;
  final List<Artist> artistdatalist;
  final String stacktext;
  final List<Map<String, dynamic>> playlistoverview;
  final List<Album> albumsList;
  final List<Map<String, dynamic>> albumlist;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2.7,
      width: size.width,
      child: GridView.count(
        scrollDirection: verticalor ? Axis.vertical : Axis.horizontal,
        crossAxisCount: verticalor ? 2 : 1,
        mainAxisSpacing: 40,
        childAspectRatio: verticalor ? 4 / 6 : 1.4 / 1,
        children: List.generate(itemCount, (index) {
          if (id == 'getstart') {
            //
            return GestureDetector(
              onTap: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return listtitle(
                      leadingWidget: h10,
                      trailingWidget: Icon(more_vertical),
                      titleWidget: text(stringtext: 'title'),
                      subtitleWidget:
                          text(stringtext: 'sub title')); //ListOfSongs [Screen]
                }));
              },
              child: gridviewcard(
                size: size,
                wImgheight: wImgheight,
                mImageheight: mImageheight,
                coverUrl:
                    'https://i.scdn.co/image/ab67706c0000bebbd540196c2a5cc76ff599a644',
                verticalor: verticalor,
                artistsname: 'BTS, ENHYPEN, SEVENTEEN and more',
                title: 'Daily Mix 1',
              ),
            );
          } else if (id == 'albumsong') {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return listtitle(
                      leadingWidget: h10,
                      trailingWidget: Icon(more_vertical),
                      titleWidget: text(stringtext: 'title'),
                      subtitleWidget: text(stringtext: 'sub title')); //commonui
                }));
              },
              child: gridviewcard(
                size: size,
                wImgheight: wImgheight,
                mImageheight: mImageheight,
                coverUrl: albumsList[index].images![0].url ?? noImg,
                verticalor: verticalor,
                artistsname:
                    albumsList[index].artists![0].name ?? error_artist_name,
                title: albumsList[index].name!,
              ),
            );
          } else if (id == 'profile') {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => listtitle(
                        leadingWidget: h10,
                        trailingWidget: Icon(more_vertical),
                        titleWidget: text(stringtext: 'title'),
                        subtitleWidget:
                            text(stringtext: 'sub title')) //Artistprofile

                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circle_avatar(
                    artistname: artistdatalist[index].name ?? error_artist_name,
                    radius: 90,
                    isselect: false,
                    imageUrl: artistdatalist[index].images![0].url ?? noImg,
                    isname: true,
                  ),
                ],
              ),
            );
          } else if (id == 'playlist') {
            final String input = playlistoverview[index]['description'];

            final regex = RegExp(r'<a href=.*?>(.*?)</a>');
            final matches = regex.allMatches(input);

            var artistNames = matches.map((match) {
              final artistWithTags = match.group(1);
              final artistName =
                  artistWithTags?.replaceAll('<[^>]+>', ''); // Remove HTML tags
              return artistName?.trim();
            }).toList();
            final formattedArtistNames = artistNames.join(', ');

            return GestureDetector(
              onTap: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return listtitle(
                      leadingWidget: h10,
                      trailingWidget: Icon(more_vertical),
                      titleWidget: text(stringtext: 'title'),
                      subtitleWidget:
                          text(stringtext: 'sub title')); //listofsong
                }));
              },
              child: gridviewcard(
                title: playlistoverview[index]['name'],
                size: size,
                wImgheight: wImgheight,
                mImageheight: mImageheight,
                coverUrl: playlistoverview[index]['images'],
                verticalor: verticalor,
                artistsname: isradio ? 'By Spotify' : formattedArtistNames,
              ),
            );
          } else if (id == 'album') {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return listtitle(
                      leadingWidget: h10,
                      trailingWidget: Icon(more_vertical),
                      titleWidget: text(stringtext: 'title'),
                      subtitleWidget: text(stringtext: 'sub title')); //commonui
                }));
              },
              child: gridviewcard(
                size: size,
                wImgheight: wImgheight,
                mImageheight: mImageheight,
                coverUrl: albumsList[index].images![0].url ?? noImg,
                verticalor: verticalor,
                artistsname:
                    albumsList[index].artists![0].name ?? error_artist_name,
                title: albumsList[index].name!,
              ),
            );
          } else if (id == 'searchplaylist') {
            log('artist name : ${playlistoverview[0]['playlists']['items'][index]['tracks']}');
            return GestureDetector(
              onTap: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return listtitle(
                      leadingWidget: h10,
                      trailingWidget: Icon(more_vertical),
                      titleWidget: text(stringtext: 'title'),
                      subtitleWidget:
                          text(stringtext: 'sub title')); //Listofsong
                }));
              },
              child: gridviewcard(
                size: size,
                wImgheight: wImgheight,
                mImageheight: mImageheight,
                coverUrl: playlistoverview[0]['playlists']['items'][index]
                        ['images'][0]['url'] ??
                    noImg,
                verticalor: verticalor,
                artistsname: 'By Spotify',
                title: playlistoverview[0]['playlists']['items'][index]
                        ['name'] ??
                    'no name ',
              ),
            );
          } else if (id == "searchalbum") {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return listtitle(
                      leadingWidget: h10,
                      trailingWidget: Icon(more_vertical),
                      titleWidget: text(stringtext: 'title'),
                      subtitleWidget: text(stringtext: 'sub title')); //commonUI
                }));
              },
              child: gridviewcard(
                size: size,
                wImgheight: wImgheight,
                mImageheight: mImageheight,
                coverUrl: albumlist[0]['albums']['items'][index]['images'][0]
                        ['url'] ??
                    noImg,
                verticalor: verticalor,
                artistsname: '',
                title: albumlist[0]['albums']['items'][index]['name'] ??
                    'No Name ',
              ),
            );
          } else {
            return gridviewcard(
              title: '',
              size: size,
              wImgheight: wImgheight,
              mImageheight: mImageheight,
              coverUrl: '',
              verticalor: verticalor,
              artistsname: '',
            );
          }
        }),
      ),
    );
  }
}

class gridviewcard extends StatelessWidget {
  gridviewcard(
      {super.key,
      required this.size,
      required this.wImgheight,
      required this.mImageheight,
      required this.coverUrl,
      required this.verticalor,
      required this.artistsname,
      required this.title});

  final Size size;
  final double wImgheight;
  final double mImageheight;
  final String coverUrl;

  final bool verticalor;
  final String artistsname;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        show_networkimage(
            color1: transparent,
            color2: transparent,
            opacity: 5,
            size: size,
            height: kIsWeb ? wImgheight : mImageheight,
            width: 2.2,
            img_url: coverUrl,
            borderRadius: 5),
        kIsWeb ? const SizedBox() : h20,
        text(
          stringtext: title,
          fontSize: 20,
        ),
        h10,
        text(
          maxline: 2,
          stringtext: artistsname,
          fontSize: 16,
          color: grey,
        )
      ],
    );
  }
}
