import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/commonbottamnavigatonbar.dart';
import 'package:gigs/SubClasses/textfield.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        bottomNavigationBar: BottamNavigatorr(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 39,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
                SizedBox(
                  height: 24,
                ),
                CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage(
                    "assets/images/Group 69.jpg",
                  ),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          height: 41,
                          width: 41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffEB8125),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_edit_outline_outlined),
                            color: Colors.white,
                            iconSize: 16,
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 69,
                    child: CustomTextFormField(
                        icon: Icons.person,
                        hintText: "Personal Info",
                        trailingIcon: Icons.arrow_forward_ios),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    //height: 132,
                    child: Column(
                      children: [
                        CustomTextFormField(
                            icon: Icons.notifications,
                            hintText: "Notifications",
                            trailingIcon: Icons.arrow_forward_ios),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            icon: Icons.person,
                            hintText: " Method",
                            trailingIcon: Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    //height: 132,
                    child: Column(
                      children: [
                        CustomTextFormField(
                            icon: Icons.notifications,
                            hintText: "FAQs",
                            trailingIcon: Icons.arrow_forward_ios),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            icon: Icons.person,
                            hintText: "Premium",
                            trailingIcon: Icons.arrow_forward_ios),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            icon: Icons.person,
                            hintText: "Settings",
                            trailingIcon: Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 69,
                    child: CustomTextFormField(
                        icon: Icons.person,
                        hintText: "Log out",
                        trailingIcon: Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
