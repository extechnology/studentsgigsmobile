import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/commonbottamnavigatonbar.dart';
import 'package:gigs/SubClasses/gigs.dart';

class DashBoradScreen extends StatelessWidget {
  const DashBoradScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9F2ED),
        bottomNavigationBar: BottamNavigatorr(),
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
                    "assets/images/logos/image 1.png",
                    height: 57,
                    width: 149,
                  ),
                ),
                // Greeting Text
                Padding(
                  padding: const EdgeInsets.only(bottom: 13),
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
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xffA0A5BA),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 190,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Gigs(showFavButton: false, showDurationInfo:
                false),
              );
            },
          ),
        ) // iconButton is optional
      ],
    );
  }
}
