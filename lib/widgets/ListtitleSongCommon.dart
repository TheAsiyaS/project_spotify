import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:project_spotifyclone/application/SongVlaues/songvalues_bloc.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/texts.dart';


class bottom_song extends StatefulWidget {
  const bottom_song(
      {super.key,
      required this.imageurl,
      required this.songname,
      required this.artistname,
      required this.id,
      required this.songurl,
      required this.isPlayingFromBloc});
  final String imageurl;
  final String songname;
  final String artistname;
  final String id;
  final String songurl;
  final bool isPlayingFromBloc;

  @override
  State<bottom_song> createState() => _bottom_songState();
}

class _bottom_songState extends State<bottom_song> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('song name :${widget.songname}');
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    audioPlayer.onSeekComplete.listen((event) {
      audioPlayer.seek(Duration.zero);
      audioPlayer.play(UrlSource(widget.songurl));
    });
  }

  bool islike = false;

  @override
  void didUpdateWidget(covariant bottom_song oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.songurl != widget.songurl && oldWidget.songurl.isNotEmpty) {
      audioPlayer.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return FutureBuilder<PaletteGenerator>(
        key: ValueKey(widget.imageurl),
        future:
            PaletteGenerator.fromImageProvider(NetworkImage(widget.imageurl)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: transparentgrey,
            );
          } else if (snapshot.hasError) {
            return text(stringtext: error_text);
          } else {
            Color? dominantColor = snapshot.data?.dominantColor?.color;
            return Container(
              height: size.height / 10,
              width: size.width,
              decoration: BoxDecoration(
                  color: dominantColor!.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: show_networkimage(
                    size: size,
                    height: 6,
                    width: 5,
                    img_url: widget.imageurl,
                    borderRadius: 10,
                    opacity: 1,
                    color1: transparent,
                    color2: transparent),
                title: text(stringtext: widget.songname),
                subtitle: text(stringtext: widget.artistname),
                trailing: SizedBox(
                  height: 50,
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () async {
                            log(duration.toString());
                            final bloc = context.read<SongvaluesBloc>();
                            if (widget.isPlayingFromBloc) {
                              await audioPlayer.pause();
                              bloc.add(const SongvaluesEvent.updatePlayback(
                                  isPlaying: false));
                            } else {
                              await audioPlayer.play(
                                  UrlSource(widget.songurl));
                              bloc.add(const SongvaluesEvent.updatePlayback(
                                  isPlaying: true));
                            }
                          },
                          icon: Icon(
                            widget.isPlayingFromBloc ? pause : play,
                            size: 32,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              islike = !islike;
                            });
                          },
                          icon: Icon(
                            islike ? favorite : favorite_outline,
                            color: islike ? spotify_green : white,
                          )),
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }

  @override
  void dispose() {
    audioPlayer.stop();
    audioPlayer.dispose();
    super.dispose();
  }
}
