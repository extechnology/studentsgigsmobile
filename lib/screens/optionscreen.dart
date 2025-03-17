import 'package:flutter/material.dart';
import 'package:gigs/screens/welcomescreen.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      body: Stack(
        // alignment: Alignment.center,
        children: [
          /// Background Image (Positioned to be in the center)
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Image.asset(
                "assets/images/image (2) 1.jpg",
                fit: BoxFit.cover,
                height: 227,
                width: 227,
              ),
            ),
          ),

          /// Foreground Layout (Transparent Container)
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white.withOpacity(0.5),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Top Section (Welcome Text, Logo, Description)
                  Column(
                    children: [
                      SizedBox(
                        height: 91,
                      ),
                      Text(
                        "Welcome to",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Image.asset(
                          "assets/images/logos/Property 1=Variant2.jpg"),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Connecting students with the best gigs and companies with top student talent—quick, easy, and hassle-free! ",
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.1,
                                  height: 2,
                                ),
                              ),
                              TextSpan(
                                text: "🚀",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  /// Middle Section (Empty Space for Background Image Visibility)
                  Expanded(child: SizedBox()),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 40, left: 8, right: 8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Welcomescreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(MediaQuery.of(context).size.width/2, 172),
                              backgroundColor: Color(0xff004673),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height *
                                      0.02),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/Ellipse 1498.jpg"),
                                  radius: 30,
                                ),
                                Text(
                                  "ExploreGigs",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 40, left: 8, right: 8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Welcomescreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(MediaQuery.of(context).size.width/2, 172),
                              backgroundColor: Color(0xffEB8125),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height *
                                      0.02),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/Ellipse 1497.jpg"),
                                  radius: 30,
                                ),
                                Text(
                                  "Find Student Talents",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
