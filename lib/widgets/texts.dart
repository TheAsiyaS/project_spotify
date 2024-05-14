import 'package:flutter/cupertino.dart';

class text_spotify extends StatelessWidget {
  const text_spotify({super.key, required this.fontSize});

  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Spotify',
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// ignore: must_be_immutable
class text extends StatelessWidget {
  text(
      {super.key,
      this.fontSize,
      required this.stringtext,
      this.style,
      this.color,
      this.maxline,
      this.decoration,
      this.fontWeight});
  final String stringtext;
  double? fontSize;
  FontStyle? style;
  Color? color;
  int? maxline;
  FontWeight? fontWeight;
  TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      stringtext,
      maxLines: maxline ?? 1,
      style: TextStyle(
          decoration: decoration ?? TextDecoration.none,
          fontSize: fontSize,
          overflow: TextOverflow.ellipsis,
          fontWeight: fontWeight ?? FontWeight.bold,
          fontStyle: style,
          color: color),
    );
  }
}
