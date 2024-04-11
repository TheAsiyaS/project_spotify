import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class cupertino_textfield extends StatelessWidget {
  cupertino_textfield({
    Key? key,
    required this.Placeholder,
    required this.backgroundcolor,
    required this.id,
    required this.placeholdercolor,
    required this.fontsize,
    required this.prefixicon,
    required this.suffixicon,
  }) : super(key: key);
  final String Placeholder;
  final Color backgroundcolor;
  final IconData? prefixicon;
  final String id;
  final Color placeholdercolor;
  final double fontsize;
  bool? suffix;
  final IconData? suffixicon;
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      maxLines: 2,
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(5)),
      prefix: Icon(
        prefixicon,
        color: placeholdercolor,
      ),
      placeholder: Placeholder,
      placeholderStyle: TextStyle(
        color: placeholdercolor,
        fontSize: fontsize,
      ),
      suffix: Icon(
        suffixicon,
        color: placeholdercolor,
      ),
      onSubmitted: (query) {
        if (id == 'searchmusic') {
        } else {}
      },
      textInputAction: TextInputAction.done,
    );
  }
}
