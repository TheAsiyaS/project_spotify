import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/widgets/texts.dart';


class circle_avatar extends StatelessWidget {
  const circle_avatar(
      {super.key,
      required this.radius,
      required this.isselect,
      required this.imageUrl,
      required this.artistname,
      required this.isname});
  final double radius;
  final bool isselect;
  final String imageUrl;
  final String artistname;
  final bool isname;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Positioned(
                left: kIsWeb ? size.width / 20 : size.width / 5,
                child: isselect ? const Icon(Icons.check_circle) : h10),
          ],
        ),
        h20,
        isname
            ? text(
                stringtext: artistname,
                fontSize: 20,
              )
            : w2,
      ],
    );
  }
}
