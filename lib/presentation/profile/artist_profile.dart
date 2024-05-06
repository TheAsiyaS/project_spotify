import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/Domain/Db/infrastructure/firestoreMethod.dart';
import 'package:project_spotifyclone/application/TopTrack/toptracklist_bloc.dart';
import 'package:project_spotifyclone/core/currentuser_detail.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ToptracklistBloc>(context)
          .add(ToptracklistEvent.gettoptrackslist(artistId));
    });

    ValueNotifier<bool> isfollow = ValueNotifier(false);
    FirebaseFirestore.instance
        .collection('followartists')
        .doc(artistId)
        .get()
        .then((docSnapshot) {
      if (docSnapshot.exists) {
        isfollow.value = true; // Set isfollow value to true if artistId exists
      }
    });
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
                ),
              ),
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
                              onTap: () async {
                                DocumentReference docRef = FirebaseFirestore
                                    .instance
                                    .collection('followartists')
                                    .doc(artistId);
                                bool documentExists =
                                    (await docRef.get()).exists;

                                isfollow.value = !isfollow.value;

                                if (documentExists == true) {
                                  await FirestoreMethod()
                                      .unfollow_artists(artistuid: artistId);
                                } else {
                                  await FirestoreMethod().follow_artists(
                                      artistid: artistId,
                                      profileImg: CurrentUserData!.photoURL,
                                      uid: CurrentUserData!.uid,
                                      username: CurrentUserData!.displayName!);
                                }
                              },
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
          BlocBuilder<ToptracklistBloc, ToptracklistState>(
            builder: (context, state) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlaySongUi(
                                artistId:
                                    state.toptrackList[index].artists![0].id ??
                                        error_artist_id,
                                songid: state.toptrackList[index].id ??
                                    error_song_id,
                                artistname: state
                                        .toptrackList[index].artists![0].name ??
                                    error_artist_name,
                                songname: state.toptrackList[index].name ??
                                    error_song_name,
                                songurl: state.toptrackList[index].previewUrl ??
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
                            subtitleWidget: text(
                                stringtext: state.toptrackList[index].name ??
                                    'no name'),
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
                  childCount: state.toptrackList.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
