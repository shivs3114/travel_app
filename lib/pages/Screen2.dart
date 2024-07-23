import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController Tc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Enter Location',
                suffixIcon: Icon(CupertinoIcons.location_solid)),
          ),
        ]),
      ),
    );
  }
}
