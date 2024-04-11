import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class containertext extends StatelessWidget {
  const containertext({
    super.key,
    required this.size,
    required this.borderRadius,
    required this.boxtext,
    required this.boxheight,
    required this.boxwidth,
    required this.textcolor, required this.bordercolor,
  });

  final Size size;
  final double borderRadius;
  final String boxtext;
  final double boxheight;
  final double boxwidth;
  final Color textcolor;
  final Color bordercolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / boxheight,
      width: size.width / boxwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: bordercolor,
          width: 1.5,
        ),
      ),
      child: Center(
          child: text(
        stringtext: boxtext,
        color: textcolor,
        fontSize: 18,
      )),
    );
  }
}
