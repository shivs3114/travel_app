import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppText(
      {this.size = 16, required this.text, this.color = CupertinoColors.black});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: size,
          color: color,
        ));
  }
}
