import 'dart:async';
import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:travel/pages/home.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }
}
