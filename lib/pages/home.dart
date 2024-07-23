import 'package:flutter/material.dart';
import 'package:travel/pages/Screen1.dart';
import 'package:travel/pages/Screen2.dart';
import 'Login.dart';
import 'package:travel/firebase_services/SignIn.dart';
import 'package:travel/pages/ContactUs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _sI = 0;
  @override
  void onTAP(int index) {
    setState(() {
      _sI = index;
    });
    Pc.jumpToPage(index);
  }

  PageController Pc = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pinkAccent,
                ),
                //color: Colors.pinkAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Name'), Text('xyz@gmail.com')],
                      )
                    ],
                  ),
                ),
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('D A S H B O A R D'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('W I S H L I S T'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.alternate_email),
                title: Text('C O N T A C T  U S'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('L O G O U T'),
                onTap: () {
                  SignOut();
                  Navigator.pop(context);
                  final snackbar = SnackBar(content: Text('Logged out'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
              ),
              ListTile(
                  title: Text('Dark theme'),
                  onTap: () {
                    ThemeData.dark();
                  })
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Travel with Us'),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        )),
      ),
      backgroundColor: Colors.yellow,
      body: PageView(
        controller: Pc,
        children: [
          Screen1(),
          Screen2(),
          Text('Screen3'),
          Text('Screen4'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.yellow,
        currentIndex: _sI,
        onTap: onTAP,
        selectedItemColor: Colors.deepOrangeAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplanemode_active_outlined,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'My Trips'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.place_outlined,
              ),
              label: 'Where to go'),
        ],
      ),
    );
  }
}
