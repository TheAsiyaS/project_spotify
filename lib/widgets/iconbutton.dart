import 'package:flutter/material.dart';

class iconbutton extends StatelessWidget {
  const iconbutton(
      {super.key,
required this.onpress, required this.iconwidget});
 
  final Function onpress;
  final Widget iconwidget;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
        },
        icon:iconwidget);
  }
}
