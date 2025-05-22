import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/Domain/provider/signIn_working_class.dart';
import 'package:project_spotifyclone/Models/Artist_list/model/artist_lists/artist.dart';
import 'package:project_spotifyclone/application/Album/album_bloc.dart';
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart';
import 'package:project_spotifyclone/application/playlistBloc/playlist_bloc.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/Ids.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/currentuser_detail.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/presentation/SignUpbasedUi/signup_ui.dart';
import 'package:project_spotifyclone/widgets/home_gridview.dart';
import 'package:project_spotifyclone/widgets/iconbutton.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ListArtistsBloc>(context)
          .add(const ListArtistsEvent.getartistslist());
      BlocProvider.of<PlaylistBloc>(context).add(
          const PlaylistEvent.getplaylistOverview(playlistids: playlistIds));
      BlocProvider.of<PlaylistBloc>(context).add(
          const PlaylistEvent.getplaylistOverview1(
              playlistids: playlist_radio));
      BlocProvider.of<AlbumBloc>(context).add(const AlbumEvent.getalbumlist());
      BlocProvider.of<AlbumBloc>(context).add(const AlbumEvent.getalbumsongs());
    });
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
              gridview_home(
                albumlist: const [],
                albumsList: const [],
                playlistoverview: const [],
                artistdatalist: const [],
                stacktext: '',
                mImageheight: 4.5,
                wImgheight: 3.5,
                isradio: false,
                size: size,
                id: 'getstart',
                itemCount: 1,
                verticalor: false,
                lines: 2,
              ),
              text(
                maxline: 1,
                stringtext: 'Popular Albums',
                fontSize: 25,
              ),
              h30,
              BlocBuilder<AlbumBloc, AlbumState>(
                builder: (context, state) {
                  return gridview_home(
                    albumlist: const [],
                    albumsList: state.albumsongs,
                    //episode
                    playlistoverview: const [],
                    artistdatalist: const [],
                    stacktext: '',
                    mImageheight: 4.5,
                    wImgheight: 4,

                    isradio: false,
                    lines: 2,
                    size: size,
                    id: 'albumsong',
                    itemCount: state.albumsongs.length,
                    verticalor: false,
                  );
                },
              ),
              h30,
              text(
                maxline: 1,
                stringtext: 'Suggested artists',
                fontSize: 25,
              ),
              h20,
              BlocBuilder<ListArtistsBloc, ListArtistsState>(
                  builder: (context, state) {
                if (state.isLoading) {
                  return const snapwaiting(color: white);
                } else if (state.artistList.isEmpty) {
                  return const Center(
                    child: snapwaiting(color: spotify_green),
                  );
                } else if (state.iserror) {
                  return Center(child: text(stringtext: error_text));
                } else {
                  List<Artist> shuffledList = List.of(state.artistList)
                    ..shuffle();
                  return gridview_home(
                    albumlist: const [],
                    albumsList: const [],
                    playlistoverview: const [],
                    artistdatalist: shuffledList,
                    stacktext: '',
                    mImageheight: 4.5,
                    wImgheight: 4,
                    isradio: false,
                    lines: 1,
                    verticalor: false,
                    size: size,
                    id: 'profile',
                    itemCount: state.artistList.length,
                  );
                }
              }),
              h30,
              text(
                maxline: 1,
                stringtext: 'Made for ${CurrentUserData!.displayName}',
                fontSize: 25,
              ),
              h20,
              BlocBuilder<PlaylistBloc, PlaylistState>(
                  builder: (context, state) {
                if (state.isLoading) {
                  return const snapwaiting(color: white);
                } else if (state.paylistoverview.isEmpty) {
                  log('usernaem : ${state.paylistoverview}');
                  return const Center(
                    child: Text('No playlists available at the moment'),
                  );
                } else if (state.iserror) {
                  return Center(child: text(stringtext: error_text));
                } else {
                  return gridview_home(
                    albumlist: const [],
                    albumsList: const [],
                    playlistoverview:
                        state.paylistoverview, //sate list pass here
                    artistdatalist: const [],
                    stacktext: '',
                    mImageheight: 4.5,
                    wImgheight: 4,

                    isradio: false,
                    lines: 2,
                    size: size,
                    id: 'playlist',
                    itemCount: state.paylistoverview.length,
                    verticalor: false,
                  );
                }
              }),
              text(
                maxline: 1,
                stringtext: 'Recommand for today',
                fontSize: 25,
              ),
              h20,
              BlocBuilder<AlbumBloc, AlbumState>(builder: (context, state) {
                if (state.isLoading) {
                  return const snapwaiting(color: white);
                } else if (state.albumList.isEmpty) {
                  return const Center(
                    child:  Text('No playlists available at the moment'),
                  );
                } else if (state.iserror) {
                  return Center(child: text(stringtext: error_text));
                } else {
                  return gridview_home(
                    albumlist: const [],
                    albumsList: state.albumList,
                    playlistoverview: const [],
                    artistdatalist: const [],
                    stacktext: '',
                    mImageheight: 4.5,
                    wImgheight: 4,
                    isradio: false,
                    lines: 2,
                    size: size,
                    id: 'album',
                    itemCount: state.albumList.length,
                    verticalor: false,
                  );
                }
              }),
              text(
                maxline: 1,
                stringtext: 'Recommanded audio',
                fontSize: 25,
              ),
              h20,
              BlocBuilder<PlaylistBloc, PlaylistState>(
                  builder: (context, state) {
                if (state.isLoading) {
                  return const snapwaiting(color: white);
                } else if (state.paylistoverview1.isEmpty) {
                  return const Center(
                    child:  Text('No audio available at the moment'),
                  );
                } else if (state.iserror) {
                  return Center(child: text(stringtext: error_text));
                } else {
                  return gridview_home(
                    albumlist: const [],
                    albumsList: const [],

                    playlistoverview:
                        state.paylistoverview1, //sate list pass here
                    artistdatalist: const [],
                    stacktext: '',
                    mImageheight: 4.5,
                    wImgheight: 4,

                    isradio: true,
                    lines: 2,
                    size: size,
                    id: 'playlist',
                    itemCount: state.paylistoverview1.length,
                    verticalor: false,
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
