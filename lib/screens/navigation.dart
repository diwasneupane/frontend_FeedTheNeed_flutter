import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:feedtheneed/screens/dashboard.dart';

import 'package:flutter/material.dart';

import '';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Dashboard(),
            Cart(),
            MyOrderScreen(),
            Profile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController!.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            activeColor: Colors.black,
            inactiveColor: Colors.orange,
          ),
          BottomNavyBarItem(
            title: Text('My Cart'),
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            activeColor: Colors.black,
            inactiveColor: Colors.orange,
          ),
          BottomNavyBarItem(
            title: Text('My Order'),
            icon: Icon(Icons.track_changes_outlined),
            activeColor: Colors.black,
            inactiveColor: Colors.orange,
          ),
          BottomNavyBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person),
            activeColor: Colors.black,
            inactiveColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
