import 'package:flutter/material.dart';

class BottamNavigatorr extends StatefulWidget {
  BottamNavigatorr({super.key});

  @override
  State<BottamNavigatorr> createState() => _BottamNavigatorrState();
}

class _BottamNavigatorrState extends State<BottamNavigatorr> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xffEB8125),
      unselectedItemColor: Color(0xff1A1A1A),
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });

        // Navigate based on index
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "DashBoard");
            break;
          case 1:
            Navigator.pushNamed(context, "SearchScreen");
            break;
          case 2:
            Navigator.pushNamed(context, "MyGigs");
            break;
          case 3:
            Navigator.pushNamed(context, "FavoritesScreen");
            break;
          case 4:
            Navigator.pushNamed(context, "ProfileScreen");
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, size: 20),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded, size: 20),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work, size: 20),
          label: "My Gigs",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined, size: 20),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 20),
          label: "Profile",
        ),
      ],
    );
  }
}
