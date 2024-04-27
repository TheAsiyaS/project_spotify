// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/presentation/splash_screen/splashscreen.dart';
import 'package:project_spotifyclone/widgets/circleavatar.dart';
import 'package:project_spotifyclone/widgets/cupertino_textfield.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';
import 'package:project_spotifyclone/widgets/texts.dart';
class choose_artist extends StatelessWidget {
  const choose_artist({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ListArtistsBloc>(context)
          .add(const ListArtistsEvent.getartistslist());
    });
    ValueNotifier<List<int>> selectedIndexs = ValueNotifier([]);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 9 : 0),
        child: Column(
          children: [
            Expanded(
                child: text(
              stringtext: 'Choose 2 or more artists you like.',
              fontSize: 35,
            )),
            cupertino_textfield(
              Placeholder: 'search....',
              backgroundcolor: white,
              prefixicon: iconsearch,
              suffixicon: null,
              id: 'chooseartist',
              placeholdercolor: grey,
              fontsize: 25,
            ),
            h20,
            ValueListenableBuilder(
                valueListenable: selectedIndexs,
                builder: (context, value, _) {
                  return Expanded(
                      flex: 5,
                      child: BlocBuilder<ListArtistsBloc, ListArtistsState>(
                          builder: (context, state) {
                        if (state.isLoading) {
                          return const snapwaiting(color: white);
                        } else if (state.artistList.isEmpty) {
                          return const Center(
                            child: snapwaiting(color: spotify_green),
                          );
                        } else if (state.iserror) {
                          return Center(child: text(stringtext: 'Error'));
                        } else {
                          return GridView.count(
                              crossAxisCount: 3,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio: kIsWeb ? 2 : 2 / 3,
                              children: List.generate(state.artistList.length,
                                  (index) {
                                final data = state.artistList[index];
                                return GestureDetector(
                                    onTap: () {
                                      if (selectedIndexs.value
                                          .contains(index)) {
                                        selectedIndexs.value.remove(index);

                                        selectedIndexs.notifyListeners();
                                      } else {
                                        selectedIndexs.value.add(index);
                                        selectedIndexs.notifyListeners();
                                      }

                                      if (selectedIndexs.value.length == 4) {
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const splashScreen()),
                                                (route) => false);
                                      }
                                    },
                                    child: circle_avatar(
                                      isname: true,
                                      artistname: data.name ?? 'no name',
                                      radius: 50,
                                      imageUrl: data.images![0].url ??
                                          'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg',
                                      isselect:
                                          selectedIndexs.value.contains(index),
                                    ));
                              }));
                        }
                      }));
                }),
          ],
        ),
      )),
    );
  }
}
