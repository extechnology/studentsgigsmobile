import 'package:flutter/material.dart';

import '../classes/benefitcls.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 160, left: 116, right: 116, bottom: 44),
              child: Image.asset("assets/images/image (4) (1) 2.jpg",width: 161,height: 161,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BenefitRow(
                    leading: Icon(Icons.work, size: 28, color: Colors.black),
                    title: "Find freelance gigs",
                    subtitle: "Explore opportunities & earn",
                  ),
                  BenefitRow(
                    leading: Icon(Icons.lightbulb_outline,
                        size: 28, color: Colors.black),
                    title: "Build your skills",
                    subtitle: "Enhance your expertise & grow",
                  ),
                  BenefitRow(
                    leading:
                        Icon(Icons.attach_money, size: 28, color: Colors.black),
                    title: "Boost your income",
                    subtitle: "Increase earnings & experience success",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 54),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "OnboardingScreen2");
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffEB8125),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    fixedSize: Size(327, 56)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
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
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xff004673),
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
