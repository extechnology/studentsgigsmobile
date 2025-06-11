import 'package:flutter/material.dart';
import 'package:gigs/Student/ExtraScreens/AddisionalScreens/applyjob.dart';

class GigsDetailScreen extends StatelessWidget {
  const GigsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the arguments passed from JobCard
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Extract all the data
    final position = args['position'] ?? 'No Position';
    final location = args['location'] ?? 'No Location';
    final jobType = args['jobType'] ?? 'No Type';
    final salary = args['salary'] ?? 'Not specified';
    final salaryType = args['salaryType'] ?? '';
    final company = args['company'] ?? 'No Company';
    final logo = args['logo'] ?? '';

    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        width: 107,
        height: 56,
        child: FloatingActionButton(
          onPressed: () {
            // Handle apply action
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ApplyForJobScreen(
                    jobId: args['id'] ?? '',
                    jobTitle: args['position'] ?? 'No Position',
                    companyName: args['company'] ?? 'No Company',
                    jobType: args["jobType"] ?? "No Job Data"),
              ),
            );
          },
          child: Text(
            "Apply",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          backgroundColor: Color(0xff004673),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        flexibleSpace: Center(
          child: Image.asset(
            "assets/images/logos/image 1.png",
            height: 80,
            width: double.infinity,
          ),
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(21),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  position,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff3F414E),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14, top: 14),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                size: 24, color: Colors.red),
                            SizedBox(width: 8),
                            Text(
                              location,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.home_work_outlined,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(width: 8),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff9FEBA8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: Text(
                                jobType,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.work_history_outlined,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(width: 8),
                            Text(
                              "Full Time", // You might want to pass this as a parameter too
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(width: 8),
                            Text(
                              "25yr - 30yr", // You might want to pass this as a parameter too
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.money,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(width: 8),
                            Text(
                              "₹$salary - $salaryType",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Company info section
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(logo),
                    ),
                    SizedBox(width: 10),
                    Text(
                      company.toUpperCase(),
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "About Company",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10.8),
                Text(
                  "At $company, our mission is to revolutionize the digital landscape by delivering innovative solutions that empower businesses to thrive in a rapidly changing world.",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The Role",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10.8),
                Text(
                  "As a $position at $company, you will play a pivotal role in shaping the user experience of our digital products.",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "What You'll Need",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10.8),
                Text(
                  "Proficiency in relevant technologies\nExperience with similar roles\nStrong understanding of industry standards",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff000000),
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
