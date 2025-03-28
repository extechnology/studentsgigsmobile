import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/CustomField.dart';
import 'package:gigs/screens/Employer/HomeScreens/employerhomescreen.dart';
import 'package:gigs/screens/Employer/OnboadEmployerProfiles/employerProfile.dart';
import 'package:gigs/screens/Employer/OnboadEmployerProfiles/employerProfile2.dart';
import 'package:gigs/screens/Employer/OnboadEmployerProfiles/employerProfile3.dart';
import 'package:gigs/screens/Employer/employerdashboard.dart';
import 'package:gigs/screens/OnBoardingScreens/onboardingscreen1.dart';
import 'package:gigs/screens/OnBoardingScreens/onboardingscreen2.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/ExtraScreens/gigsdetail.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/ExtraScreens/premiumscreen.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/ExtraScreens/updateprofile.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/favorites.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/jobpost.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/mygigs.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/profilescreen.dart';
import 'package:gigs/screens/Students/HomScreensEmployee/searchscreen.dart';
import 'package:gigs/screens/Students/StudentProfileScreens/onboardProfile.dart';
import 'package:gigs/screens/Students/StudentProfileScreens/onboardProfile2.dart';
import 'package:gigs/screens/Students/StudentProfileScreens/onboardingProfile3.dart';
import 'package:gigs/screens/Students/homescreen.dart';
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
        "EmployerProfile": (context) => EmployerProfile(),
        "EmployerProfile2": (context) => EmpolyerProfile2(),
        "EmployerProfile3": (context) => EmployerProfile3(),
        "DashBoard": (context) => DashBoard(),
        "MyGigs": (context) => MyGigs(),
        "FavoritesScreen": (context) => FavoritesScreen(),
        "SearchScreen": (context) => SearchScreen(),
        "ProfileScreen": (context) => ProfileScreen(),
        "ProfileEditScreen": (context) => ProfileEditScreen(),
        "GigsDetailScreen": (context) => GigsDetailScreen(),
        "PremiumScreen": (context) => PremiumScreen(),
        "EmployerDashboard":(context)=> EmployerDashboard(),
        "EmployerHome": (context)=> EmployerHome()
      },
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
