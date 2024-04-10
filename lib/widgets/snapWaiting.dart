import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class snapwaiting extends StatelessWidget {
  const snapwaiting({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: color,
      ),
    );
  }
}
