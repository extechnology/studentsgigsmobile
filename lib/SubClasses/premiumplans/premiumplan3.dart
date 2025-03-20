import 'package:flutter/material.dart';

class PremiumPlan3 extends StatelessWidget {
  const PremiumPlan3({super.key});

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
            //color: Color(0xffEB8125),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffEB8125),
                Color(0xffc55a5f),
                Color(0xff51abe8)
              ],
            ),
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
                "Premium",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffEB8125)),
              ),
              SizedBox(
                width: 7,
              ),
              ShaderMask(
                shaderCallback: (Rect bounds){
                  return LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xffEB8125),
                      Color(0xffc55a5f),
                      Color(0xff51abe8)
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Text(
                  "Rs. 3999",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff004673)),
                ),
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
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.zero, // Remove padding to fit the gradient
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Adjust as needed
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xffEB8125),
                        Color(0xffc55a5f),
                        Color(0xff51abe8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: 218,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "Current Plan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
