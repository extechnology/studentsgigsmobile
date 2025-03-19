import 'package:flutter/material.dart';
import 'package:gigs/screens/OnBoardingScreens/onboardingscreen1.dart';


class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Color(0xffF9F2ED),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Image.asset(
            "assets/images/logos/image 1.png",
            fit: BoxFit.contain,
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
              padding: const EdgeInsets.only(top: 100, left: 72, right: 72),
              child: Image.asset("assets/images/onboard/image (2) 1.png",fit: BoxFit.fill,),
            ),
            Container(
              padding: EdgeInsets.only(right: 35, left: 35, top: 42),
              child: Text(
                "Find freelance gigs tailored to your skills and interests",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 44),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen1(),));
                },
                child: Text(
                  "Next",
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Already have an account? ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400,),),
                  TextButton(onPressed: (){
                    //Navigator.pushNamed(context, "OnboardingScreen1");
                  }, child: Text("Sign In",style: TextStyle(color: Color(0xffEB8125),fontSize: 18,fontWeight: FontWeight.w400,),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
