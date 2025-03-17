import 'package:flutter/material.dart';
import 'package:gigs/screens/Students/favorites.dart';
import 'package:gigs/screens/Students/homepage.dart';
import 'package:gigs/screens/Students/searchscreen.dart';
import 'package:gigs/screens/Students/mygigs.dart';
import 'package:gigs/screens/Students/profilescreen.dart';
import 'package:gigs/SubClasses/commonbottamnavigatonbar.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    DashBoradScreen(), // Replace with your actual home screen
    SearchScreen(),
    MyGigs(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    if (index >= 0 && index < _screens.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
    );
  }
}
