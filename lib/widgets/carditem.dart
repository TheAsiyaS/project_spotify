import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/core/url.dart';
import 'package:project_spotifyclone/widgets/image.dart';
import 'package:project_spotifyclone/widgets/texts.dart';


// ignore: must_be_immutable
class carditem extends StatelessWidget {
  carditem({
    super.key,
    this.color,
    this.img_url,
    this.cardtext,
    required this.size,
    this.fontsize,
    required this.isselect,
    required this.assetornet,
    required this.rotate,
    required this.borderRadius,
  });

  Color? color;
  String? cardtext;
  String? img_url;
  final size;
  double? fontsize;
  final bool isselect;
  final bool assetornet;
  final double rotate;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      color: color,
      elevation: 90,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kIsWeb ? w30 : w10,
              text(
                stringtext: cardtext ?? '',
                fontSize: fontsize,
              ),
              const Spacer(),
              Visibility(
                  visible: isselect, child: const Icon(Icons.check_circle)),
            ],
          ),
          Positioned(
            left: kIsWeb ? size.width / 300 : size.width / 5,
            top: kIsWeb ? size.height / 22 : size.height / 25,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(rotate / 360),
              child: assetornet
                  ? show_image(
                      size: size,
                      height: kIsWeb ? 4 : 8,
                      width: kIsWeb ? 2 : 3,
                      img_url: img_url ?? noImg,
                      borderRadius: borderRadius)
                  : show_networkimage(
                      color1: transparent,
                      color2: transparent,
                      opacity: 5,
                      size: size,
                      height: 8,
                      width: 3,
                      img_url: img_url ?? noImg,
                      borderRadius: borderRadius),
            ),
          ),
        ],
      ),
    );
  }
}
