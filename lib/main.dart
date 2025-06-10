import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gigs/bloc/google_signup_bloc/bloclogic.dart';
import 'package:gigs/bloc/google_signup_bloc/googleauthrepository.dart';
import 'package:gigs/Employer/HomeScreens/employerhomescreen.dart';
import 'package:gigs/Employer/OnBoardingScreens/OnboadEmployerProfiles/employerProfile.dart';
import 'package:gigs/Employer/OnBoardingScreens/OnboadEmployerProfiles/employerProfile2.dart';
import 'package:gigs/Employer/OnBoardingScreens/OnboadEmployerProfiles/employerProfile3.dart';
import 'package:gigs/Employer/HomeScreens/employerdashboard.dart';
import 'package:gigs/Employer/OnBoardingScreens/onboardingscreen1.dart';
import 'package:gigs/Employer/OnBoardingScreens/onboardingscreen2.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/Profile_ExtraScreens/additional_info.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/Profile_ExtraScreens/EducationDetails/educationalInfo.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/Profile_ExtraScreens/EducationDetails/educationalInformationAdd.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/Profile_ExtraScreens/workPreference.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/MoreScreens/gigsdetail.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/MoreScreens/premiumscreen.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/Profile_ExtraScreens/updateprofile.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/favorites.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/mygigs.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/profilescreen.dart';
import 'package:gigs/Student/Students/HomScreensEmployee/searchscreen.dart';
import 'package:gigs/Student/Students/StudentProfileScreens/onboardProfile.dart';
import 'package:gigs/Student/Students/StudentProfileScreens/onboardProfile2.dart';
import 'package:gigs/Student/Students/StudentProfileScreens/onboardingProfile3.dart';
import 'package:gigs/Student/Students/homescreen.dart';
import 'package:gigs/Commonscreens/loginpage.dart';
import 'package:gigs/Commonscreens/optionscreen.dart';
import 'package:gigs/Commonscreens/register.dart';
import 'Student/Students/HomScreensEmployee/Profile_ExtraScreens/Skills/Experience.dart/experience_show.dart';
import 'Student/Students/HomScreensEmployee/Profile_ExtraScreens/Skills/Experience.dart/ecperience.dart';
import 'Student/Students/HomScreensEmployee/Profile_ExtraScreens/categoriesed.dart';
import 'Student/Students/HomScreensEmployee/Profile_ExtraScreens/language.dart';
import 'Student/Students/HomScreensEmployee/Profile_ExtraScreens/Skills/technicalSkill.dart';
import 'Student/Students/HomScreensEmployee/homepage.dart';
import 'Student/Students/HomScreensEmployee/userplan.dart';
import 'Commonscreens/splashscreen.dart';
import 'Commonscreens/welcomescreen.dart';

void main() {
  final GoogleAuthRepository repository = GoogleAuthRepository();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GoogleAuthBloc(repository)),
      ],
      child: MyApp(),
    ),
  );
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
        "LoginPage": (context) => LoginPage(
              userType: '',
            ),
        "RegisterPage": (context) => RegisterPage(
              userType: '',
            ),
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
        "WorkPreference": (context) => WorkPreference(),
        "GigsDetailScreen": (context) => GigsDetailScreen(),
        "PremiumScreen": (context) => PremiumScreen(),
        "EmployerDashboard": (context) => EmployerDashboard(),
        "EmployerHome": (context) => EmployerHome(),
        "LanguageDropdown": (context) => LanguageDropdown(),
        "EducationalInfoSection": (context) => EducationalInfoSection(),
        "EducationPage": (context) => EducationPage(),
        "Technicalskill": (context) => Technicalskill(),
        "CategoryDropdownFormField": (context) => CategoryDropdownFormField(),
        "ExperinceScreen": (context) => ExperinceScreen(),
        "ShowExperience": (context) => ShowExperience(),
        "AdditionalInformationScreen": (context) =>
            AdditionalInformationScreen(),
        "PlanUsagePage": (context) => PlanUsagePage(),
      },
      debugShowCheckedModeBanner: false,
      home: OptionScreen(),
    );
  }
}
