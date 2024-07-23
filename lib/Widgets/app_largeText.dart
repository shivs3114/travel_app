import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppLarge extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppLarge(
      {this.size = 30, required this.text, this.color = CupertinoColors.black});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: size, color: color, fontWeight: FontWeight.bold));
  }
}
