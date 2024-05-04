import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/currentuser_detail.dart';
import 'package:project_spotifyclone/presentation/profile/artist_profile.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';

import '../../core/colors.dart';
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
            child: FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance
                  .collection('followartists')
                  .where('uid', isEqualTo: CurrentUserData!.uid)
                  .get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: snapwaiting(color: spotify_green),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: text(stringtext: snapshot.error.toString()),
                  );
                } else if (snapshot.data == null ||
                    snapshot.data!.docs.isEmpty) {
                  return Center(
                    child: text(stringtext: 'Currently No Data Found!!'),
                  );
                } else {
                  final List<String> artistidList = [];
                  for (final doc in snapshot.data!.docs) {
                    final ids = doc['artistid'];
                    artistidList.add(ids);
                  }

                  BlocProvider.of<ListArtistsBloc>(context)
                      .add(ListArtistsEvent.getartist(artistidList));

                  return BlocBuilder<ListArtistsBloc, ListArtistsState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const snapwaiting(color: white);
                      } else if (state.iserror) {
                        return Center(
                          child: text(stringtext: error_text),
                        );
                      } else {
                        return ListView.separated(   
                          itemCount: state.artist.length,
                          itemBuilder: (context, index) {
                            if (index >= state.artist.length) {
                              // Check if the index is within the valid range
                              return Container();
                            }

                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => artist_profile(
                                    artistId: state.artist[index].id!,
                                    profileimag:
                                        state.artist[index].images![0].url!,
                                    monthlylisterners: state
                                        .artist[index].followers!.total!
                                        .toString(),
                                    views: '124,590,57',
                                    artistname: state.artist[index].name!,
                                  ),
                                ));
                              },
                              child: listtitle(
                                leadingWidget: show_networkimage(
                                    size: size,
                                    height: 7,
                                    width: 7,
                                    img_url:
                                        state.artist[index].images![0].url!,
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
                                titleWidget:
                                    text(stringtext: state.artist[index].name!),
                                subtitleWidget: text(stringtext: ''),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                        );
                      }
                    },
                  );
                }
              },
            ),
          )
        ],
      )),
    );
  }
}
