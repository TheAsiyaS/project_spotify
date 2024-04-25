import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:project_spotifyclone/Models/album/albummodel/item.dart';



import '../../application/Album/album_bloc.dart';
import '../../core/CommonErrorText.dart';
import '../../core/colors.dart';
import '../../core/divider.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/image.dart';
import '../../widgets/listtitle.dart';
import '../../widgets/snapWaiting.dart';
import '../../widgets/texts.dart';


class AbumUi extends StatelessWidget {
  const AbumUi({
    super.key,
    required this.albumid,
    required this.Albumtitle,
    required this.Albumcover,
    required this.Albumartist,
    required this.Albumyear,
    required this.totalsong,
    required this.albumsList,
    required this.isidAlbum,
  });

  final String albumid;
  final String Albumtitle;
  final String Albumcover;
  final String Albumartist;
  final String Albumyear;
  final String totalsong;
  final bool isidAlbum;
  final List<Item> albumsList;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        expandedHeight: size.height / 1.99,
        flexibleSpace: FlexibleSpaceBar(
            title: text(
              stringtext: Albumtitle,
            ),
            background: FutureBuilder<PaletteGenerator>(
                future: PaletteGenerator.fromImageProvider(
                    NetworkImage(Albumcover)),
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
                  Color? dominantColor = snapshot.data?.dominantColor?.color;
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
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width / 5),
                            child: show_networkimage(
                              color1: transparent,
                              color2: transparent,
                              size: size,
                              height: 4,
                              width: 1.8,
                              img_url: Albumcover,
                              borderRadius: 20,
                              opacity: 1,
                            ),
                          ),
                          text(
                            stringtext: Albumartist, //
                            maxline: 1,
                            color: grey,
                          ),
                          h10,
                          h10,
                          text(
                            stringtext: 'Complitation : $Albumyear',
                            color: grey,
                          )
                        ],
                      ),
                    ),
                  );
                })),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
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
            SizedBox(
                height: size.height / 3,
                width: double.infinity,
                child: isidAlbum
                    ? searchalbumitems(albumid: albumid)
                    : albumitems(albumsList: albumsList))
          ],
        ),
      ),
    ]));
  }
}



class albumitems extends StatelessWidget {
  const albumitems({
    super.key,
    required this.albumsList,
  });

  final List<Item> albumsList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                log('url : ${albumsList[index].previewUrl ?? 'nourl'}');
                //navigate to palysongui (screen)
              },
              child: listtitle(
                  leadingWidget: h10,
                  trailingWidget: GestureDetector(
                      onTap: () async {}, child: const Icon(more_vertical)),
                  titleWidget:
                      text(stringtext: albumsList[index].name ?? 'no name'),
                  subtitleWidget: text(
                      stringtext: albumsList[index].artists![0].name ??
                          error_artist_name))
            
              );
        },
        separatorBuilder: (context, index) {
          return divider;
        },
        itemCount: albumsList.length);
  }
}

class searchalbumitems extends StatelessWidget {
  const searchalbumitems({
    super.key,
    required this.albumid,
  });

  final String albumid;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AlbumBloc>(context)
          .add(AlbumEvent.getalbum(albumid: [albumid]));
    });
    return BlocBuilder<AlbumBloc, AlbumState>(
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    log('url : ${state.albumList[0].tracks!.items![index].previewUrl ?? 'nourl'}');
                    //navigate to playSongui[screen]
                  },
                  child: ListTile(
                    title: text(
                      stringtext:
                          state.albumList[0].tracks!.items![index].name ??
                              'name ',
                      fontSize: 19,
                    ),
                    subtitle: text(
                        stringtext: state.albumList[0].tracks!.items![index]
                                .artists![0].name ??
                            error_artist_name),
                    trailing: iconbutton(
                      iconwidget: const Icon(
                        more_vertical,
                        size: 27,
                        color: white,
                      ),
                      onpress: () {},
                    ),
                  ));
            },
            separatorBuilder: (context, index) {
              return divider;
            },
            itemCount: state.albumList[0].tracks!.items!.length);
      },
    );
  }
}
