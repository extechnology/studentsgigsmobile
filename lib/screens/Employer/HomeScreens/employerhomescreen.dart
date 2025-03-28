import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/jobcard.dart';

class EmployerHome extends StatelessWidget {
  const EmployerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9F2ED),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(top: 58, bottom: 24,left: 20,right: 20),
                  child: Image.asset(
                    "assets/images/logos/image 1.png",
                    height: 57,
                    width: 149,
                  ),
                ),
                // Greeting Text
                Padding(
                  padding: const EdgeInsets.only(bottom: 13),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Hey ",
                          style: TextStyle(fontFamily: "Poppins",
                            fontSize: 30, fontWeight: FontWeight.w300,),
                        ),
                        TextSpan(
                          text: "Adhila",
                          style: TextStyle(fontFamily: "Poppins",
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: ",\nGood Afternoon!",
                          style: TextStyle(fontFamily: "Poppins",
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                buildSection("Current Gigs",context),
                buildSection("Pending Applications",context),
                buildSection("Completed Gigs",context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w600, fontSize: 20)),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("See All",
                        style: TextStyle(fontFamily: "Poppins",
                            fontSize: 15,
                            color: Color(0xff3F414E),
                            fontWeight: FontWeight.w400)),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xffA0A5BA),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.only(right: 30),
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
                    )
                );
              },
            ),
          ),
        ) // iconButton is optional
      ],
    );
  }
}
