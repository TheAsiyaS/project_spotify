import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_spotifyclone/application/SongVlaues/songvalues_bloc.dart';

import '../core/colors.dart';
import '../presentation/Search/search.dart';
import '../presentation/home/home.dart';
import '../presentation/library/library.dart';
import '../presentation/premium/premium.dart';
import 'ListtitleSongCommon.dart';


ValueNotifier<int> bottomIndex = ValueNotifier(0); //bottomnavigationBar index
final navigationScreens = [
  const home(),
  const Search(),
  const your_library(),
  const permium()
];

class navigationBar extends StatelessWidget {
  const navigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottomIndex,
        builder: (BuildContext ctx, int newindex, Widget? _) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: black,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                elevation: 0,
                currentIndex: bottomIndex.value,
                onTap: (index) {
                  bottomIndex.value = index;
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                      ),
                      label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.library_books,
                      ),
                      label: 'Library'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.spotify), label: 'Premium'),
                ]),
            body: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                navigationScreens[bottomIndex.value],
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 5, right: 5),
                    child: BlocBuilder<SongvaluesBloc, SongvaluesState>(
                      builder: (context, state) {
                        return bottom_song(
                            imageurl: state.songimgurl,
                            songname: state.songname,
                            songurl: state.songUrl,
                            artistname: state.artistname,
                            id: state.artistid);
                      },
                    ))
              ],
            ),
          );
        });
  }
}

