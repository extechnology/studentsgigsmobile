import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/gigs.dart';
import 'package:gigs/SubClasses/jobcard.dart';

class MyGigs extends StatelessWidget {
  const MyGigs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 58, bottom: 24),
              child: Image.asset(
                "assets/images/logos/image 1.png",
                height: 57,
                width: 149,
              ),
            ),
            Text(
              "My Gigs",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                child: JobCard(
                  applied: false,
                  company: "Ex-Media",
                  employerId: "2",
                  id: "3",
                  isLoading: false,
                  jobType: "developer",
                  location: "Kochi",
                  logo: "assets/images/logos/image (6).png",
                  onSave: () {},
                  position: "Snr",
                  salary: "3000",salaryType: "Monthly",saved: false,timeAgo: "& days",
                ))
          ],
        ),
      ),
    );
  }
}
