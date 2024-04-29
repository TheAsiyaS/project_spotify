import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/divider.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

// ignore: must_be_immutable
class rowText extends StatelessWidget {
  rowText(
      {Key? key,
      required this.size,
      required this.stringtext,
      required this.image_url,
      this.color,
      this.fontSize,
      this.height_img,
      this.width_img,
      required this.iconornot,
      this.rotatevalue,
      this.iconclor,
      this.trailicon,
      this.icon})   
      : super(key: key);

  final Size size;
  final String stringtext;
  final String image_url;
  Color? color;
  double? fontSize;
  double? height_img;
  double? width_img;
  final bool iconornot;
  IconData? icon;
  double? rotatevalue;
  IconData? trailicon;
  Color? iconclor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconornot
            ? RotationTransition(
                turns: AlwaysStoppedAnimation(rotatevalue ?? 0 / 360),
                child: Icon(
                  icon,
                  color: iconclor ?? white,
                ))
            : show_image(
                size: size,
                height: height_img ?? 0,
                width: width_img ?? 0,
                img_url: image_url,
                borderRadius: 0,
              ),
        w20,
        SizedBox(
          height: 30,
          width: size.width/1.7,   
          child: text(
            stringtext: stringtext,
            color: color,
            fontSize: fontSize,
          ),
        ),
        spacer,
        Icon(
          trailicon,
        )
      ],
    );
  }
}
