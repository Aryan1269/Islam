import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islam/tabs/create.dart';
import 'package:islam/tabs/home.dart';
import 'package:islam/tabs/library.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({Key? key}) : super(key: key);

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int currentIndex = 0;
  final screen = [
    homeScreen(),
    Text('first2'),
    Create(),
    Text('first4'),
    LIBRARYs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(245, 50, 153, 38),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: 'SUBSCRIPTION',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add_sharp),
              label: 'Library',
            ),
          ]),
    );
  }
}
