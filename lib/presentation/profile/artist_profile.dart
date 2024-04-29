
import 'package:flutter/material.dart';
import '../../core/CommonErrorText.dart';
import '../../core/colors.dart';
import '../../core/divider.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../widgets/Containertext.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/image.dart';
import '../../widgets/listtitle.dart';
import '../../widgets/texts.dart';
import '../songUi/playsongui.dart';

class artist_profile extends StatelessWidget {
  const artist_profile(
      {super.key,
      required this.profileimag,
      required this.monthlylisterners,
      required this.views,
      required this.artistname,
      required this.artistId});
  final String profileimag;
  final String monthlylisterners;
  final String artistId;
  final String views;
  final String artistname;
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isfollow = ValueNotifier(false);

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              leading: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(108, 43, 43, 43),
                      borderRadius: BorderRadius.circular(50)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      goback,
                      size: 27,
                      color: white,
                    ),
                  )),
              pinned: true,
              expandedHeight: size.height / 3.5,
              flexibleSpace: FlexibleSpaceBar(
                title: text(
                  stringtext: artistname,
                  fontSize: 30,
                  maxline: 2,
                ),
                background: show_networkimage(
                    size: size,
                    height: 4,
                    width: 0,
                    img_url: profileimag,
                    borderRadius: 0,
                    opacity: 5,
                    color1: black,
                    color2: transparent),
              )),
          SliverToBoxAdapter(
              child: Container(
            height: size.height / 4,
            width: size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color.fromARGB(255, 84, 84, 84), transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  h20,
                  text(
                    stringtext: monthlylisterners,
                    color: grey,
                  ),
                  Row(
                    children: [
                      ValueListenableBuilder(
                          valueListenable: isfollow,
                          builder: (context, snapshot, newdata) {
                            return GestureDetector(
                              onTap: () async {},
                              child: containertext(
                                  bordercolor:
                                      isfollow.value ? spotify_green : white,
                                  size: size,
                                  borderRadius: 5,
                                  boxtext:
                                      isfollow.value ? 'Following' : 'Follow',
                                  textcolor:
                                      isfollow.value ? spotify_green : white,
                                  boxheight: 20,
                                  boxwidth: 3.5),
                            );
                          }),
                      w20,
                      iconbutton(
                        iconwidget: const Icon(
                          more_vertical,
                          size: 27,
                          color: grey,
                        ),
                        onpress: () {},
                      ),
                      spacer,
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
                        padding: const EdgeInsets.only(bottom: 0, right: 20),
                        child: iconbutton(
                          iconwidget: const Icon(
                            circleplay,
                            size: 60,
                            color: spotify_green,
                          ),
                          onpress: () {},
                        ),
                      ),
                    ],
                  ),
                  text(
                    stringtext: 'Popular',
                    fontSize: 20,
                  )
                ],
              ),
            ),
          )),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => palysongui(
                          artistId: error_artist_id,
                          songid: error_song_id,
                          artistname: error_artist_name,
                          songname: error_song_name,
                          songurl:
                              'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
                          songCover: profileimag,
                          whoMix: '',
                        )));
              },
              child: Row(
                children: [
                  text(stringtext: '${index + 1}'),
                  Expanded(
                    child: listtitle(
                      leadingWidget: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(profileimag),
                      ),
                      subtitleWidget: text(stringtext: 'no name'),
                      titleWidget: text(stringtext: ''),
                      trailingWidget: iconbutton(
                          iconwidget: const Icon(
                            more_vertical,
                            size: 27,
                            color: grey,
                          ),
                          onpress: () {}),
                    ),
                  ),
                ],
              ),
            ),
            childCount: 3,
          ))
        ],
      ),
    );
  }
}
