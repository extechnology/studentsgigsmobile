import 'package:flutter/material.dart';

class PremiumPlan2 extends StatelessWidget {
  const PremiumPlan2({super.key});

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
            color: Color(0xff004673),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Standard",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "Rs. 399",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff004673)),
              ),
              SizedBox(
                width: 7,
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
                  "Upgrade Now",
                  style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(218, 40),
                    backgroundColor: Color(0xff004673)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
