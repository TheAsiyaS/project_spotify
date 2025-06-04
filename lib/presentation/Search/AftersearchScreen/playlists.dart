import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/home_gridview.dart';

class playlists extends StatelessWidget {
  const playlists({
    super.key,
    required this.playList,
  });
  final List<Map<String, dynamic>> playList;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
if (playList.length <5) {
  return Center(child: Text('No playlist is available now'));
} else {
  log(playList.length.toString());

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 6 : 0),
        child: Column(
          children: [
            
            Expanded(
              child: gridview_home(
                albumlist: const [],
                albumsList: const [],
                playlistoverview: playList,
                artistdatalist: const [],
                stacktext: '',
                mImageheight: 4.5,
                wImgheight: 1.5,
                isradio: false,
                lines: 2,
                size: size,
                id: 'searchplaylist',
                itemCount: playList[0]['playlists']['items'].length,
                verticalor: true,
              ),
            ),
          ],
        ),
      ),
    ));}
  }
}
