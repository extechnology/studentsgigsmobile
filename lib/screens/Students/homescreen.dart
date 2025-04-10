import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/favorites.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/homepage.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/mygigs.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/profilescreen.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/searchscreen.dart';


class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    DashBoradScreen(),
    SearchScreen(),
    MyGigs(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor:
            Color(0xffEB8125), // Change this to any color you prefer
        unselectedItemColor:
            Color(0xff4d4747), // Change this to any color you prefer
        showSelectedLabels: true, // Ensures labels are visible when selected
        showUnselectedLabels:
            true, // Ensures labels are visible when unselected
        type: BottomNavigationBarType.fixed, // Ensures all icons are aligned
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: "",
          ),
        ],
      ),
    );
  }
}
