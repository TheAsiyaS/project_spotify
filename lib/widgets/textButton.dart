import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class textbutton extends StatelessWidget {
  const textbutton(
      {super.key,
      required this.childtext,
      required this.id,
      required this.buttoncolor});

  final String childtext;
  final String id;
  final Color buttoncolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: text(
          stringtext: childtext,
          color: buttoncolor,
        ));
  }
}
