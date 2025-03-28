import 'package:flutter/material.dart';

class PremiumPlan1 extends StatelessWidget {
  const PremiumPlan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17),
      child: Container(
        padding: EdgeInsets.only(top: 28),
        height: 500,
        decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.3),
            //     // Slightly lighter shadow for a natural effect
            //     blurRadius: 5,
            //     // Higher blur radius for a softer shadow
            //     spreadRadius: 2,
            //     // Slight spread to make the shadow visible around the container
            //     offset: Offset(0, 5), // Lower offset to create an elevated effect
            //   ),
            // ],
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
                    style: TextStyle(fontFamily: "Poppins",
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
                      style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff004673)),
                  ),
                  Text(
                    "3 Students",
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff004673)),
                  ),
                  Text(
                    "1 Month",
                    style: TextStyle(fontFamily: "Poppins",
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
                        fontSize: 12,fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        color: Color(0xff004673)),
                  ),
                  Text(
                    "Basic",
                    style: TextStyle(
                        fontSize: 10,fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                    style: TextStyle(fontFamily: "Poppins",
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
                  style: TextStyle(fontFamily: "Poppins",color: Color(0xffFFFFFF)),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(218, 40),
                    backgroundColor: Color(0xffEB8125)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
