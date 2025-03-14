import 'package:flutter/material.dart';
import 'package:gigs/classes/benefitcls.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F2ED),
        //toolbarHeight: 149,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/images/logos/image 1.jpg",
            height: 57,
            width: double.infinity,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff313131)),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 116, right: 116, bottom: 44),
              child: Image.asset("assets/images/image (3) (1).jpg",height: 166,width: 166,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BenefitRow(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffE3E3E3),
                      child: Text("1"),
                      radius: 22.5,
                    ),
                    title: "Create a profile, showcase your skills",
                    subtitle: "",
                  ),
                  BenefitRow(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffE3E3E3),
                      child: Text("2"),
                      radius: 22.5,
                    ),
                    title: "Browse and apply for gigs that match your interests",
                    subtitle: "",
                  ),
                  BenefitRow(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffE3E3E3),
                      child: Text("3"),
                      radius: 22.5,
                    ),
                    title: "Work on and complete gigs to earn money and build your portfolio",
                    subtitle: "",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 54,),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "LoginPage");
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff004673),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    fixedSize: Size(327, 56)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xffEB8125),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
