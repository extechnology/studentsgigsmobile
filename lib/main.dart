import 'package:flutter/material.dart';
import 'package:gigs/screens/RegisterPages/onboardProfile.dart';
import 'package:gigs/screens/RegisterPages/onboardProfile2.dart';
import 'package:gigs/screens/RegisterPages/register.dart';
import 'package:gigs/screens/loginpage.dart';
import 'OnBoardingScreens/onboardingscreen1.dart';
import 'OnBoardingScreens/onboardingscreen2.dart';
import 'screens/splashscreen.dart';
import 'screens/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "SplashScreen": (context) => SplashScreen(),
        "WelcomeScreen": (context) => Welcomescreen(),
        "OnbardingScreen1": (context) => OnboardingScreen1(),
        "OnboardingScreen2": (context) => OnboardingScreen2(),
        "LoginPage": (context) => LoginPage(),
        "RegisterPage": (context) => RegisterPage(),
        "OnboardProfile": (context) => OnboardProfile(),
        "OnboardProfile2": (context) => OnboardProfile2()
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
