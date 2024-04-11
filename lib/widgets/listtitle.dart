import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';

class listtitle extends StatelessWidget {
  const listtitle({
    Key? key,
    required this.leadingWidget,
    required this.trailingWidget,
    required this.titleWidget,
    required this.subtitleWidget,
  }) : super(key: key);

  final Widget leadingWidget;
  final Widget trailingWidget;
  final Widget titleWidget;
  final Widget subtitleWidget;

  @override    
  Widget build(BuildContext context) {
    return ListTile(
        selected: false,
        selectedColor: spotify_green,
        leading: leadingWidget,
        title: titleWidget,
        subtitle: subtitleWidget,
        trailing: trailingWidget);
  }
}
    