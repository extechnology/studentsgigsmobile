import 'package:flutter/material.dart';
import 'package:gigs/screens/Students/dashboradscreens/favorites.dart';
import 'package:gigs/screens/Students/dashboradscreens/homepage.dart';
import 'package:gigs/screens/Students/dashboradscreens/mygigs.dart';
import 'package:gigs/screens/Students/dashboradscreens/profilescreen.dart';
import 'package:gigs/screens/Students/dashboradscreens/searchscreen.dart';

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
