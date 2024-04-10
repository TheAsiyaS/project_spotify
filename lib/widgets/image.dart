import 'package:flutter/cupertino.dart';
import 'package:project_spotifyclone/core/colors.dart';

class show_image extends StatelessWidget {
  const show_image({
    Key? key,
    required this.size,
    required this.height,
    required this.width,
    required this.img_url,
    required this.borderRadius,
  }) : super(key: key);

  final Size size;
  final double height;
  final double width;
  final String img_url;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / height,
      width: size.width / width,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(img_url), fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}

class show_networkimage extends StatelessWidget {
  const show_networkimage(
      {super.key,
      required this.size,
      required this.height,
      required this.width,
      required this.img_url,
      required this.borderRadius,
      required this.opacity,
      required this.color1,
      required this.color2});

  final Size size;
  final double height;
  final double width;
  final String img_url;
  final double borderRadius;
  final double opacity;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / height,
      width: size.width / width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1, //bottom
              color2 //top
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          boxShadow: const [BoxShadow(color: transparentgrey)],
          image: DecorationImage(
              image: NetworkImage(img_url),
              fit: BoxFit.cover,
              opacity: opacity),
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
