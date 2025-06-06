import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_spotifyclone/application/Artists/list_artists_bloc.dart';
import 'package:project_spotifyclone/application/SongVlaues/songvalues_bloc.dart';
import 'package:project_spotifyclone/core/CommonErrorText.dart';
import 'package:project_spotifyclone/widgets/listtitle.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../core/colors.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../core/url.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/image.dart';
import '../../widgets/texts.dart';
import 'Durationformat.dart';

class PlaySongUi extends StatefulWidget {
  const PlaySongUi({
    super.key,
    required this.songurl,
    required this.songCover,
    required this.songid,
    required this.whoMix,
    required this.songname,
    required this.artistname,
    required this.artistId,
  });
  final String songurl;
  final String songCover;
  final String songid;
  final String whoMix;
  final String songname;
  final String artistname;
  final String artistId;

  @override
  State<PlaySongUi> createState() => _PlaySongUiState();
}

class _PlaySongUiState extends State<PlaySongUi> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isplaying = true;
  Duration duration = const Duration(seconds: 1);
  Duration position = Duration.zero;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SongvaluesBloc>(context).add(SongvaluesEvent.getSongvalue(
          songimgurl: widget.songCover,
          songUrl: widget.songurl,
          songname: widget.songname,
          artistname: widget.artistname,
          artistid: widget.artistId));
      audioPlayer.onPositionChanged.listen((newPosition) {
        if (mounted) {
          setState(() {
            position = newPosition;
          });
        }
      });
      if (widget.songurl ==
          'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Apologies! We’re doing our best to play the music, but the data is currently unavailable from the server. We’ll play it as soon as it becomes available.',
              style: TextStyle(color: white),
            ),
            duration: Duration(seconds: 10),
            backgroundColor: darkgreen,
          ),
        );
      }
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    audioPlayer.onSeekComplete.listen((event) {
      audioPlayer.seek(Duration.zero);
      audioPlayer.setVolume(1);
    });

    playsong();
  }

  Future<void> playsong() async {
    await audioPlayer.play(UrlSource(widget.songurl));

    duration = (await audioPlayer.getDuration()) ?? const Duration(seconds: 1);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 27,
                    )),
                Column(
                  children: [
                    text(
                      stringtext: 'PLAYING FROM PLAYLIST',
                      fontWeight: FontWeight.normal,
                    ),
                    GestureDetector(
                        child: text(
                      stringtext: widget.whoMix,
                    )),
                  ],
                ),
                iconbutton(
                  iconwidget: const Icon(
                    more_vertical,
                    size: 27,
                    color: white,
                  ),
                  onpress: () {},
                )
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                show_networkimage(
                    color1: black,
                    color2: transparent,
                    size: size,
                    height: 1.2,
                    width: 0,
                    img_url: widget.songCover,
                    borderRadius: 0,
                    opacity: 200),
                //stack items starts
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height / 8,
                    ),
                    Center(
                        child: SizedBox(
                      height: size.height / 3,
                      width: size.width,
                      child: SleekCircularSlider(
                        max: duration.inSeconds.toDouble(),
                        initialValue: position.inSeconds.toDouble(),
                        innerWidget: (double percentage) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: NetworkImage(widget.songCover),
                            ),
                          );
                        },
                        appearance: CircularSliderAppearance(
                            size: 250,
                            angleRange: 300,
                            startAngle: 300,
                            customColors: CustomSliderColors(
                                progressBarColor:
                                    const Color.fromARGB(255, 255, 220, 25),
                                dotColor:
                                    const Color.fromARGB(255, 255, 202, 28),
                                trackColor: transparentgrey),
                            customWidths: CustomSliderWidths(
                                trackWidth: 5,
                                handlerSize: 0,
                                progressBarWidth: 5.5)),
                      ),
                    )),
                    h20,
                    artistbloc(
                        songname: widget.songname,
                        artistname: widget.artistname,
                        artistId: widget.artistId),
                    h20,
                    Slider(
                        activeColor: lightwhite,
                        inactiveColor: transparentgrey,
                        max: duration.inSeconds.toDouble(),
                        value: position.inSeconds.toDouble(),
                        onChanged: (newvlue) {}),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: transparentgrey,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: text(
                            stringtext: durationFormat(position),
                          )),
                        ),
                        w40,
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: transparentgrey,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: text(
                            stringtext: durationFormat(duration),
                          )),
                        )
                      ],
                    ),
                    h20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconbutton(
                          iconwidget: const Icon(
                            iconshuffle,
                            size: 30,
                            color: white,
                          ),
                          onpress: () {},
                        ),
                        iconbutton(
                          iconwidget: const Icon(
                            skipback,
                            size: 35,
                            color: white,
                          ),
                          onpress: () {},
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 30, right: 25),
                            child: IconButton(
                                onPressed: () async {
                                  setState(() {
                                    isplaying = !isplaying;
                                  });
                                  if (isplaying == true) {
                                    await audioPlayer
                                        .play(UrlSource(widget.songurl));
                                  } else {
                                    audioPlayer.pause();
                                  }
                                },
                                icon: Icon(
                                  isplaying ? pauseround : playround,
                                  size: 67,
                                ))),
                        iconbutton(
                          iconwidget: const Icon(
                            next,
                            size: 35,
                            color: white,
                          ),
                          onpress: () {},
                        ),
                        iconbutton(
                          iconwidget: const Icon(
                            repeat,
                            size: 31,
                            color: white,
                          ),
                          onpress: () {},
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    audioPlayer.dispose();

    super.dispose();
  }
}

ValueNotifier<bool> islike = ValueNotifier(false);

class artistbloc extends StatelessWidget {
  const artistbloc({
    super.key,
    required this.songname,
    required this.artistname,
    required this.artistId,
  });

  final String songname;
  final String artistname;
  final String artistId;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ListArtistsBloc>(context)
          .add(ListArtistsEvent.getartist([artistId]));
    });
    return BlocBuilder<ListArtistsBloc, ListArtistsState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const snapwaiting(color: white);
      } else if (state.artist.isEmpty) {
        return const Center(
          child: snapwaiting(color: spotify_green),
        );
      } else if (state.iserror) {
        return Center(child: text(stringtext: error_text));
      } else {
        return ValueListenableBuilder(
            valueListenable: islike,
            builder: (context, snapshot, _) {
              return listtitle(
                leadingWidget: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage(state.artist[0].images![0].url ?? noImg),
                ),
                subtitleWidget: text(stringtext: songname),
                titleWidget: text(stringtext: artistname),
                trailingWidget: iconbutton(
                  iconwidget: Icon(
                    islike.value ? favorite : favorite_outline,
                    size: 27,
                    color: islike.value ? spotify_green : white,
                  ),
                  onpress: () {
                    islike.value = !islike.value;
                  },
                ),
              );
            });
      }
    });
  }
}
