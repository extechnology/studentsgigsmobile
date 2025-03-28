import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigs/Functions/payment.dart';
import 'package:gigs/SubClasses/customlisttile.dart';


class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  final PaymentService paymentService = PaymentService();

  @override
  // void dispose() {
  //   paymentService.dispose(); // Clean up Razorpay instance
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 39,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff3F414E)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Stack(
                    children: [
                      // Profile image
                      Image.asset("assets/images/logos/image 1.png"),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: AssetImage("assets/images/others/Group 69.png"),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff0A66C2), // LinkedIn blue
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Icon(Icons.edit, color: Colors.white, size: 18),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Edit icon (bottom right)

                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.person,
                    iconColorLeading: Color(0xffEB8125),
                    title: "Personal Info",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileEditScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.briefcase,
                    iconColorLeading: Color(0xff004673),
                    title: "Work Experience",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.globe,
                    iconColorLeading: Color(0xff004673),
                    title: "Language",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.bell,
                    iconColorLeading: Color(0xffEB8125),
                    title: "Notifications",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.creditcard,
                    iconColorLeading: Color(0xff004673),
                    title: "Payment Method",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.question_circle,
                    iconColorLeading: Color(0xffEB8125),
                    title: "FAQs",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.rosette,
                    iconColorLeading: Color(0xff004673),
                    title: "Premium",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "PremiumScreen"),
                  ),
                  CustomListTile(
                    iconLeading: CupertinoIcons.gear_solid,
                    iconColorLeading: Color(0xffEB8125),
                    title: "Settings",
                    iconTrailing: Icons.arrow_forward_ios,
                    iconColoTrailing: Color(0xff747783),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                  CustomListTile(
                    iconLeading: Icons.person_off_outlined,
                    iconColorLeading: Color(0xff004673),
                    title: "Log out",
                    iconTrailing: Icons.logout,
                    iconColoTrailing: Color(0xff004673),
                    onTap: () => Navigator.pushNamed(context, "ProfileScreen"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
