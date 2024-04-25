

// ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../widgets/NavigationBar.dart';
import '../widgets/image.dart';
import '../widgets/texts.dart';
import 'colors.dart';

// ignore: must_be_immutable
class elevated_button extends StatelessWidget {
  elevated_button(
      {super.key,
      this.color,
      required this.button_id,
      this.curve_value,
      this.padding_value,
      required this.image_show,
      required this.buttontext});
  final String button_id;
  final bool image_show;
  Color? color;
  double? curve_value;
  double? padding_value;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding_value ?? 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                curve_value ?? 0), // adjust the value as needed
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image_show
                ? show_image(
                    borderRadius: 0,
                    size: size,
                    height: 13,
                    width: 5,
                    img_url:
                        'asset/image/some/google_318-278809-removebg-preview.png')
                : const SizedBox(),
            text(
              stringtext: buttontext,
              color: black,
              fontSize: 23,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Container_button extends StatelessWidget {
  Container_button(
      {super.key,
      required this.height,
      required this.width,
      required this.buttontext,
      required this.id,
      this.color1,
      this.color2,
      this.fontsize,
      this.textcolor});

  final double height;
  final double width;
  Color? color1;
  Color? color2;
  final String buttontext;
  double? fontsize;
  final String id;
  Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (id == 'freeloign') {
          
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const navigationBar();
          }));
        } else if (id == 'whatmusicNEXT') {
          //artsist choosing screen
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => const choose_artist()));
        }
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color1 ?? Colors.transparent,
              color2 ?? Colors.transparent,
            ]),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: text(
            maxline: 1,
            stringtext: buttontext,
            fontSize: fontsize,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
