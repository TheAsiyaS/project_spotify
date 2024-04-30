import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/home_gridview.dart';

class Album extends StatelessWidget {
  const Album({
    super.key,
    required this.albumList,
  });
  final List<Map<String, dynamic>> albumList; 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    log('lengrth album : ${albumList[0]['albums']['items'].length}');
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 6 : 0),
        child: Column(
          children: [
            Expanded(
              child: gridview_home(
                albumlist: albumList,
                albumsList: const [],
               
                playlistoverview: const [],
                artistdatalist: const [],
                stacktext: '',
                mImageheight:4.5,
                wImgheight: 1.5,
               
                isradio: false,
                lines: 2,
                size: size,
                id: 'searchalbum',
                itemCount: albumList[0]['albums']['items'].length,
                verticalor: true,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
