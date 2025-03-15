import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/gigs.dart';
import 'package:gigs/screens/Students/mygigs.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  int selectedIndex = 0;
  final List<Widget> pages = [
    DashBoard(), MyGigs(),
    Center(child: Text("Work Screen")),
    Center(child: Text("Favorites Screen")),
    Center(child: Text("Profile Screen")),
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9F2ED),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffEB8125),
          unselectedItemColor: Color(0xff1A1A1A),
          currentIndex: selectedIndex,  // Add this line
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 20), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search, size: 20), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.work, size: 20), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined, size: 20), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person, size: 20), label: ""),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(top: 58, bottom: 24),
                  child: Image.asset(
                    "assets/images/logos/Property 1=Variant2.jpg",
                    height: 57,
                    width: 149,
                  ),
                ),

                // Greeting Text
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Hey ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                        TextSpan(
                          text: "Adhila",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: ",\nGood Afternoon!",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                buildSection("Current Gigs"),
                buildSection("Pending Applications"),
                buildSection("Completed Gigs"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("See All",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff3F414E),
                            fontWeight: FontWeight.w400)),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios,
                        size: 15, color: Color(0xffA0A5BA)),
                  ],
                ),
              ),
            ],
          ),
        ),
        // FIX: Wrap ListView in a SizedBox with a height constraint
        Container(
          height: 150, // Give it a fixed height
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: List.generate(4, (index) => Gigs(showFavorite: false)),
          ),
        ),
      ],
    );
  }

}