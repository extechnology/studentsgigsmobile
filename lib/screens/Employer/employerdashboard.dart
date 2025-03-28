import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigs/screens/Employer/HomeScreens/employerhomescreen.dart';
import 'package:gigs/screens/Employer/HomeScreens/employerprofile.dart';
import 'package:gigs/screens/Employer/HomeScreens/postedjobs.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/jobpost.dart';

class EmployerDashboard extends StatefulWidget {
  const EmployerDashboard({super.key});

  @override
  State<EmployerDashboard> createState() => _EmployerDashboardState();
}

class _EmployerDashboardState extends State<EmployerDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    EmployerHome(),
    PostedJobs(),
    JobPost(),
    EmpolyerProfile(),
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
            icon: Icon(CupertinoIcons.bag),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
