import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: Color(0xffF9F2ED),
        leading: Container(
          margin: EdgeInsets.only(left: 7, top: 10),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE3E3E3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(31),
          child: Column(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xffEB8125),
                      Color(0xff806649),
                      Color(0xff004673)
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Text(
                  "Unlock Your Full Potential With Premium",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Acces exclusive job oppotunities, build your resume, and \nstand out to top employers",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      height: 2),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Container(
                  padding: EdgeInsets.only(top: 28),
                  height: 500,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          // Slightly lighter shadow for a natural effect
                          blurRadius: 5,
                          // Higher blur radius for a softer shadow
                          spreadRadius: 2,
                          // Slight spread to make the shadow visible around the container
                          offset: Offset(0, 5), // Lower offset to create an elevated effect
                        ),
                      ],
                      color: Color(0xffEB8125),
                      borderRadius: BorderRadius.circular(19)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(19),
                            bottomRight: Radius.circular(19))),
                    padding:
                        EdgeInsets.only(right: 28, left: 28, top: 30, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Free",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffEB8125)),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xffe5aa72),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Current",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Job Applications",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Text(
                              "3 Students",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff827AE1)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Validity",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Text(
                              "1 Month",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff827AE1)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile Visibility to Employers",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Text(
                              "Basic",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff827AE1)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Resume Builder",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Job Alerts & Notifications",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Saved Jobs",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Workplace Essentials Certified course",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Priority Shortlisting by Employers",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Premium Profile Badge",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Live Chat With Employers",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff004673)),
                            ),
                            Icon(
                              Icons.not_interested_rounded,
                              color: Color(0xff827AE1),
                              size: 20,
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Current Plan",
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(218, 40),
                              backgroundColor: Color(0xffEB8125)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
