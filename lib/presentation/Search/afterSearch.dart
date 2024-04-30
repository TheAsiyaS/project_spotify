import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/presentation/Search/AftersearchScreen/album.dart';
import 'package:project_spotifyclone/presentation/Search/AftersearchScreen/artists.dart';
import 'package:project_spotifyclone/presentation/Search/AftersearchScreen/playlists.dart';
import 'package:project_spotifyclone/presentation/Search/AftersearchScreen/songs.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

import '../../application/Search/search_bloc.dart';

class aftersearch extends StatelessWidget {
  const aftersearch({super.key, required this.query});
  final String query;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.searchItem(query: query));
    });
    final List<String> values = [
      'Songs',
      'Artists',
      'Playlists',
      'Albums',
    ];

    ValueNotifier<int> currentpage = ValueNotifier(0);
    return Scaffold(
      appBar: AppBar(
        title: text(
          stringtext: query,
          fontWeight: FontWeight.normal,
        ),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
        if (state.isLoading) {
          return const snapwaiting(color: white);
        } else if (state.searchItems.isEmpty) {
          return const Center(
            child: snapwaiting(color: spotify_green),
          );
        } else if (state.iserror) {
          return Center(child: text(stringtext: error_text));
        } else {
          return SafeArea(
              child: ValueListenableBuilder(
                  valueListenable: currentpage,
                  builder: (context, value, _) {
                    final screens = [
                      songs(trackList: state.searchItems),
                      Artists(artistList: state.searchItems),
                      playlists(playList: state.searchItems),
                      Album(albumList: state.searchItems),
                    ];
                    return Column(
                      children: [
                        SizedBox(
                            height: 50,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return FilterChip(
                                      selectedColor: green,
                                      labelStyle: const TextStyle(fontSize: 16),
                                      label: text(stringtext: values[index]),
                                      onSelected: (value) {
                                        currentpage.value = index;
                                      });
                                },
                                separatorBuilder: (context, index) {
                                  return w20;
                                },
                                itemCount: values.length)),
                        Expanded(child: screens[currentpage.value])
                      ],
                    );
                  }));
        }
      }),
    );
  }
}
