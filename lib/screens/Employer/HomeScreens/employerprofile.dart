import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigs/screens/Employer/HomeScreens/AdditionalHomeScreens/profileupdate.dart';

class EmpolyerProfile extends StatelessWidget {
  const EmpolyerProfile({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Color(0xff004673),
                    child: Stack(
                      children: [
                        Center(
                            child: Image.asset("assets/images/others/Group 69.png")),
                        Align(
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    height: 69,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.work_outline_outlined,
                          color: Color(0xffEB8125),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Comopany Info",
                          style: TextStyle(fontFamily: "Poppins",
                              color: Color(0xff32343E),
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EmployerProfileUpdate(),));
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff747783),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    //height: 132,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.notifications_none_outlined,
                              color: Color(0xffEB8125),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Notifications",
                              style: TextStyle(fontFamily: "Poppins",
                                  color: Color(0xff32343E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff747783),
                                ))
                          ],
                        ),SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.payment,
                              color: Color(0xff004673),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Payment Method",
                              style: TextStyle(fontFamily: "Poppins",
                                  color: Color(0xff32343E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff747783),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    //height: 132,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.question_mark,
                              color: Color(0xffEB8125),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "FAQs",
                              style: TextStyle(fontFamily: "Poppins",
                                  color: Color(0xff32343E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff747783),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.workspace_premium_outlined,
                              color: Color(0xff004673),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Premium",
                              style: TextStyle(fontFamily: "Poppins",
                                  color: Color(0xff32343E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "PremiumScreen");
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff747783),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.settings_outlined,
                              color: Color(0xffEB8125),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Settings",
                              style: TextStyle(fontFamily: "Poppins",
                                  color: Color(0xff32343E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff747783),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    height: 69,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.logout,
                          color: Color(0xff004673),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(fontFamily: "Poppins",
                              color: Color(0xff32343E),
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff747783),
                            ))
                      ],
                    ),
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
