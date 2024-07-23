import 'package:flutter/material.dart';
import 'package:travel/Widgets/app_largeText.dart';
import 'package:travel/Widgets/app_text.dart';
import 'package:travel/Widgets/responsive_button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List images = ['welcome-one.png', 'welcome-two.png', 'welcome-three.png'];
  List<String> texts1 = [
    'You have to conquer every obstacle,before you can reach the top of the mountain.',
    'Mountains are not stadiums where I satisfy my ambition to achieve, they are the cathedrals where I practice my religion.',
    'Mountains have a way of dealing with overconfidence.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/' + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLarge(text: 'Trips'),
                          AppText(
                            text: 'Mountains',
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text: texts1[index],
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          responsive_button(
                            width: 120,
                          )
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexdots) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 1),
                            width: 5,
                            height: (index == indexdots) ? 20 : 8,
                            decoration: BoxDecoration(
                                color: (index == indexdots)
                                    ? Colors.blueGrey[600]
                                    : Colors.blueGrey[100],
                                borderRadius: BorderRadius.circular(6)),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
