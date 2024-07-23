import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class responsive_button extends StatelessWidget {
  bool? isResponsive;
  double? width;
  responsive_button({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF5d69b3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('img/button-one.png'),
        ],
      ),
    );
  }
}
