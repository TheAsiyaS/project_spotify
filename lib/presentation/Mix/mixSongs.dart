import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:project_spotifyclone/application/playlistBloc/playlist_bloc.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/url.dart';
import 'package:project_spotifyclone/presentation/songUi/playsongui.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaylistBloc>(context)
          .add(PlaylistEvent.getplaylistItems(playlistids: [playlistId]));
    });
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: size.height / 1.9,
            flexibleSpace: FlexibleSpaceBar(
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
                              Center(
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
                    width: size.width / 5,
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
            child: BlocBuilder<PlaylistBloc, PlaylistState>(
                builder: (context, state) {
              if (state.isLoading) {
                return const snapwaiting(color: white);
              } else if (state.playlistItems.isEmpty) {
                return const Center(
                  child: snapwaiting(color: spotify_green),
                );
              } else if (state.iserror) {
                return Center(child: text(stringtext: error_text));
              } else {
                return SizedBox(
                    height: size.height / 3,
                    width: double.infinity,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              log(state.playlistItems[index].track!.artists![0]
                                      .id ??
                                  '1234');

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PlaySongUi(
                                        artistId: state.playlistItems[index]
                                                .track!.artists![0].id ??
                                            error_artist_id,
                                        songid: state.playlistItems[index]
                                                .track!.id ??
                                            error_song_id,
                                        artistname: state.playlistItems[index]
                                                .track!.artists![0].name ??
                                            error_artist_name,
                                        songname: state.playlistItems[index]
                                                .track!.name ??
                                            error_song_name,
                                        songurl: state.playlistItems[index]
                                                .track!.previewUrl ??
                                            'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
                                        songCover: state.playlistItems[index]
                                                .track!.album!.images![0].url ??
                                            noImg,
                                        whoMix: whosmix,
                                      )));
                            },
                            child: listtitle(
                              leadingWidget: show_networkimage(
                                  size: size,
                                  height: 5,
                                  width: kIsWeb ? 20 : 6,
                                  img_url: state.playlistItems[index].track!
                                      .album!.images![0].url!,
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
                                      state.playlistItems[index].track!.name!),
                              subtitleWidget: text(
                                  stringtext: state.playlistItems[index].track!
                                          .artists![0].name ??
                                      'Artist name currently unavailble'),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return divider;
                        },
                        itemCount: state.playlistItems.length));
              }
            }),
          ),
        ],
      ),
    );
  }
}
