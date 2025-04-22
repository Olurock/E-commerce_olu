import 'package:flutter/material.dart';

import 'home_screen.dart';


class MainScreen extends StatefulWidget {
  static String id = 'main screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  //bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(
                () {
              currentPageIndex = index;
            },
          );
        },
        backgroundColor: Colors.white,
        //indicatorColor: kfaintcolor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            //selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.contact_page_outlined),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.pages_outlined),
            label: 'Offer',
          ),
          NavigationDestination(
            icon: Icon(Icons.perm_identity_sharp),
            label: 'Account',
          ),
        ],
      ),
      body: GestureDetector(
        child: <Widget>[
          const HomeScreen(),
          const HomeScreen(),
          const HomeScreen(),
          const HomeScreen(),
          const HomeScreen()
        ][currentPageIndex],
      ),
    );
  }
}
