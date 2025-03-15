import 'package:flutter/material.dart';
import 'package:gigs/screens/Employer/OnboadEmployerProfiles/employerProfile.dart';
import 'package:gigs/screens/Employer/OnboadEmployerProfiles/employerProfile2.dart';
import 'package:gigs/screens/Employer/OnboadEmployerProfiles/employerProfile3.dart';
import 'package:gigs/screens/OnBoardingScreens/onboardingscreen1.dart';
import 'package:gigs/screens/OnBoardingScreens/onboardingscreen2.dart';
import 'package:gigs/screens/Students/StudentProfileScreens/onboardProfile.dart';
import 'package:gigs/screens/Students/StudentProfileScreens/onboardProfile2.dart';
import 'package:gigs/screens/Students/StudentProfileScreens/onboardingProfile3.dart';
import 'package:gigs/screens/Students/dashboeardscren.dart';
import 'package:gigs/screens/Students/mygigs.dart';
import 'package:gigs/screens/loginpage.dart';
import 'package:gigs/screens/optionscreen.dart';
import 'package:gigs/screens/register.dart';
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
        "OptionScreen": (context) => OptionScreen(),
        "WelcomeScreen": (context) => Welcomescreen(),
        "OnbardingScreen1": (context) => OnboardingScreen1(),
        "OnboardingScreen2": (context) => OnboardingScreen2(),
        "LoginPage": (context) => LoginPage(),
        "RegisterPage": (context) => RegisterPage(),
        "OnboardProfile": (context) => OnboardProfile(),
        "OnboardProfile2": (context) => OnboardProfile2(),
        "OnboardProfile3": (context) => OnboardProfile3(),
        "EmployerProfile": (context)=> EmployerProfile(),
        "EmployerProfile2": (context)=> EmpolyerProfile2(),
        "EmployerProfile3": (context)=> EmployerProfile3(),
        "DashBoard": (context)=> DashBoard(),
        "MyGigs": (context)  => MyGigs()
      },
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}
