import 'package:flutter/material.dart';

import 'OnBoardingScreens/onboardingscreen1.dart';
import 'OnBoardingScreens/onboardingscreen2.dart';
import 'screens/splashscreen.dart';
import 'screens/welcomescreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "SplashScreen": (context)=> SplashScreen(),
        "WelcomeScreen": (context)=> Welcomescreen(),
        "OnbardingScreen1": (context)=> OnboardingScreen1(),
        "OnboardingScreen2": (context)=>OnboardingScreen2()
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
