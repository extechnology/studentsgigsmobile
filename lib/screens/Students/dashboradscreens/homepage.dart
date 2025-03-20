import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/gigs.dart';

class DashBoradScreen extends StatelessWidget {
  const DashBoradScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9F2ED),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(top: 58, bottom: 24,left: 20,right: 20),
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
                          style: TextStyle(fontFamily: "Montserrat",
                              fontSize: 30, fontWeight: FontWeight.w300,),
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
                buildSection("Current Gigs",context),
                buildSection("Pending Applications",context),
                buildSection("Completed Gigs",context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, context) {
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
          width: double.infinity,
          height: 160,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Gigs(text1: "",text2: "", showLikeButton: false,),
                );
              },
            ),
          ),
        ) // iconButton is optional
      ],
    );
  }
}
