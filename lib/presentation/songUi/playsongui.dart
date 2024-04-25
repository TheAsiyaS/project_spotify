import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/listtitle.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../core/colors.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../core/url.dart';
import '../../widgets/iconbutton.dart';
import '../../widgets/image.dart';
import '../../widgets/texts.dart';
import 'Durationformat.dart';

class palysongui extends StatefulWidget {
  palysongui({
    Key? key,
    required this.songurl,
    required this.songCover,
    required this.songid,
    required this.whoMix,
    required this.songname,
    required this.artistname,
    required this.artistId,
  }) : super(key: key);
  final String songurl;
  final String songCover;
  final String songid;
  final String whoMix;
  final String songname;
  final String artistname;
  final String artistId;

  @override
  State<palysongui> createState() => _palysonguiState();
}

class _palysonguiState extends State<palysongui> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isplaying = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioPlayer.setReleaseMode(ReleaseMode.loop);
    audioPlayer.onSeekComplete.listen((event) {
      audioPlayer.seek(Duration.zero);
      // audioPlayer.play(UrlSource(widget.songurl));
      audioPlayer.setVolume(1);
    });

    playsong();
  }

  Future<void> playsong() async {
    await audioPlayer.play(UrlSource(widget.songurl));
    audioPlayer.onPositionChanged.listen((newPosition) {
      if (mounted) {
        setState(() {
          position = newPosition;
        });
      }
    });
    duration = await audioPlayer.getDuration() ?? Duration.zero;
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
                    onPressed: () {
                      audioPlayer.dispose();

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
                        innerWidget: (percentage) {
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
                                progressBarColor: const Color(0xFFFFD700),
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
                                  log(duration.toString());
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
    audioPlayer.stop();
    audioPlayer.dispose();
    setState(() {});

    // TODO: implement dispose
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
    return listtitle(
      leadingWidget: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(noImg),
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
  }
}
