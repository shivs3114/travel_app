import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/Splash_Screen.dart';
import 'pages/home.dart';
import 'pages/Login.dart';
import 'package:travel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        brightness: Brightness.light,
      ),
      routes: {
        '/Home': (BuildContext context) => Home(),
        '/Splash': (BuildContext context) => SplashScreen(),
        '/Login': (BuildContext context) => LoginScreen()
      },
      home: Homes(),
    );
  }
}

class Homes extends StatelessWidget {
  const Homes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(
                              'data:image/jpeg;base64,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'))),
                ),
                Positioned(
                  bottom: 10,
                  right: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                          bottom: 10,
                          right: 50,
                          child: AnimatedContainerWidget()),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            style: ButtonStyle(
                              //shape: RoundedRectangleBorder(side: 20,borderRadius: BorderRadius.circular(20)),
                              elevation: MaterialStateProperty.all(5),
                            ),
                            onPressed: () {
                              print('hello');
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SplashScreen()));
                            },
                            child: Text('Click to Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;
  String funct(String text) {
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, '/Home');
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: !selected ? Colors.pinkAccent : Colors.blue,
        ),
        height: 200,
        width: 300,
        child: Center(
          child: AnimatedTextKit(
            totalRepeatCount: 3,
            animatedTexts: [
              TypewriterAnimatedText('Travel with US',
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: selected ? Colors.white : Colors.black87))
            ],
          ),
        ),
      ),
    );
  }
}
