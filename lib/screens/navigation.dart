import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:feedtheneed/screens/blogscreen.dart';
import 'package:feedtheneed/screens/dashboard.dart';
import 'package:feedtheneed/screens/donate_screen.dart';
import 'package:feedtheneed/screens/donation_history.dart';
import 'package:feedtheneed/screens/profile.dart';

import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  final int index;
  const Navigation({Key? key, this.index = 1}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int increment = 0;
  int _currentIndex = 0;
  // PageController? _pageController;

  @override
  void initState() {
    super.initState();
    // _pageController = PageController();
  }

  @override
  void dispose() {
    // _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: increment == 0 ? widget.index : _currentIndex,
        children: const <Widget>[
          Dashboard(),
          DonationHistory(),
          Donate(),
          BlogScreen(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: increment == 0 ? widget.index : _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
            increment = 1;
          });
          // _pageController!.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text('Home',
                style: TextStyle(
                  color: Colors.black,
                )),
            icon: const Icon(
              Icons.dashboard_outlined,
              color: Colors.blueGrey,
            ),
            activeColor: Colors.lightBlue,
            inactiveColor: Colors.blueGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: const Text('History',
                style: TextStyle(
                  color: Colors.black,
                )),
            icon: const Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.blueGrey,
            ),
            activeColor: Colors.lightBlue,
            inactiveColor: Colors.blueGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: const Text('Donate',
                style: TextStyle(
                  color: Colors.black,
                )),
            icon: const Icon(
              Icons.add_card,
              color: Colors.blueGrey,
            ),
            activeColor: Colors.lightBlue,
            inactiveColor: Colors.blueGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: const Text(
              'Blog',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            icon: const Icon(
              Icons.book,
              color: Colors.blueGrey,
            ),
            activeColor: Colors.lightBlue,
            inactiveColor: Colors.blueGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: const Text('Profile',
                style: TextStyle(
                  color: Colors.black,
                )),
            icon: const Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            activeColor: Colors.lightBlue,
            inactiveColor: Colors.blueGrey,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
