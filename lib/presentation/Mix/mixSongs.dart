
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../core/colors.dart';
import '../../core/divider.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../widgets/circleavatar.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/image.dart';
import '../../widgets/listtitle.dart';
import '../../widgets/rowtext.dart';
import '../../widgets/snapWaiting.dart';
import '../../widgets/texts.dart';


class ListOfSongs extends StatelessWidget {
  const ListOfSongs({
    super.key,
    required this.coverUrl,
    required this.id,
    required this.titletext,
    required this.playlistId,
    required this.whosmix, 
    required this.artistsConatin,
  });

  final String coverUrl;
  final String id;
  final String titletext;
  final String playlistId;
  final String whosmix;
  final String artistsConatin;
  @override
  Widget build(BuildContext context) {
   
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: size.height / 1.99,
            flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: EdgeInsets.only(bottom: size.height / 14, left: 20),
                  child: text(
                    stringtext: titletext,
                    fontSize: 19,
                    maxline: 2,
                  ),
                ),
                background: FutureBuilder<PaletteGenerator>(
                    future: PaletteGenerator.fromImageProvider(
                        NetworkImage(coverUrl)),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            snapwaiting(
                              color: grey,
                            ),
                          ],
                        );
                      }
                      if (snapshot.hasError) {
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            snapwaiting(
                              color: red,
                            )
                          ],
                        );
                      }
                      Color? dominantColor =
                          snapshot.data?.dominantColor?.color;
                      return Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [black, dominantColor ?? black],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topRight,
                        )),
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height / 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: size.height / 17,
                                    width: size.width / 1.37,
                                    child: CupertinoTextField(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              41, 93, 92, 92),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      placeholder: 'Find in Playlist....',
                                      placeholderStyle:
                                          const TextStyle(color: white),
                                      prefix: const Icon(iconsearch),
                                    ),
                                  ),
                                  Container(
                                    height: size.height / 17,
                                    width: size.width / 5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            41, 93, 92, 92),
                                        borderRadius: BorderRadius.circular(5)),
                                    child:
                                        Center(child: text(stringtext: 'Sort')),
                                  )
                                ],
                              ),
                              h30,
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width / 5),
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [
                                    show_networkimage(
                                      color1: transparent,
                                      color2: transparent,
                                      size: size,
                                      height: 4,
                                      width: 1.8,
                                      img_url: coverUrl,
                                      borderRadius: 20,
                                      opacity: 150,
                                    ),
                                    circle_avatar(
                                        radius: 50,
                                        isselect: false,
                                        imageUrl: coverUrl,
                                        artistname: '',
                                        isname: false)
                                  ],
                                ),
                              ),
                              h20,
                              text(
                                stringtext: artistsConatin, //
                                maxline: 2,
                                color: spotify_green,
                                decoration: TextDecoration.underline,
                              ),
                              h10,
                              rowText(
                                size: size,
                                stringtext: 'Spotify',
                                image_url: '',
                                iconornot: true,
                                icon: FontAwesomeIcons.spotify,
                                iconclor: spotify_green,
                              ),
                              h10,
                              text(
                                stringtext: '2hr and 41 min',
                                color: grey,
                              )
                            ],
                          ),
                        ),
                      );
                    })),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: size.width / 5,
              width: size.width,
              child: Row(
                children: [
                  iconbutton(
                    iconwidget: const Icon(
                      favorite_outline,
                      size: 27,
                      color: white,
                    ),
                    onpress: () {},
                  ),
                  iconbutton(
                    iconwidget: const Icon(
                      roundDownload,
                      size: 27,
                      color: grey,
                    ),
                    onpress: () {},
                  ),
                  iconbutton(
                    iconwidget: const Icon(
                      more_vertical,
                      size: 27,
                      color: grey,
                    ),
                    onpress: () {},
                  ),
                  SizedBox(
                    width: size.width / 4,
                  ),
                  iconbutton(
                    iconwidget: const Icon(
                      iconshuffle,
                      size: 27,
                      color: grey,
                    ),
                    onpress: () {},
                  ),
                  w20,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: iconbutton(
                      iconwidget: const Icon(
                        circleplay,
                        size: 70,
                        color: spotify_green,
                      ),
                      onpress: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
         child: SizedBox(
                    height: size.height / 3,
                    width: double.infinity,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                          

                              //navigate to playsong ui
                            },
                            child: listtitle(
                            
                              leadingWidget: show_networkimage(
                                  size: size,
                                  height: 5,
                                  width: kIsWeb ? 20 : 6,
                                  img_url: 'image url here',
                                  borderRadius: 5,
                                  opacity: 5,
                                  color1: transparent,
                                  color2: transparent),
                              trailingWidget: iconbutton(
                                iconwidget: const Icon(
                                  more_vertical,
                                  size: 27,
                                  color: grey,
                                ),
                                onpress: () {},
                              ),
                              titleWidget: text(
                                  stringtext:
                                      'track_name'),
                              subtitleWidget: text(
                                  stringtext: 
                                      'Artist name currently unavailble'),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return divider;
                        },
                        itemCount:2)),
              
            
          ),
        ],
      ),
    );
  }
}