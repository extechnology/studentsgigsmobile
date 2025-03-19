import 'package:flutter/material.dart';

class GigsDetailScreen extends StatelessWidget {
  const GigsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        width: 107,
        height: 56,
        child: FloatingActionButton(
          onPressed: () {
            //Navigator.pushNamed(context, "");
          },
          child: Text(
            "Apply",
            style: TextStyle(color: Colors.white,fontSize: 16),
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
              borderRadius: BorderRadius.circular(21)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Frontend Developer",
                      style: TextStyle(
                          color: Color(0xff3F414E),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Color(0xff1A1A1A),
                          size: 28,
                        ))
                  ],
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
                                size: 24, color: Color(0xff000000)),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Kannur, Kerala, India",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.home_work_outlined,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(
                              width: 8,
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff9FEBA8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: const Text(
                                "Online",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.work_history_outlined,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Full Time",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,
                                size: 24, color: Color(0xff000000)),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "25yr - 30yr",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.money, size: 24, color: Color(0xff000000)),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "₹30,000 - Project Based",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "About Company",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10.8,
                ),
                Text(
                  "At Ex-Media, our mission is to revolutionize the digital landscape by delivering innovative solutions that empower businesses to thrive in a rapidly changing world. With a strong focus on social responsibility, our impact extends beyond the screen, driving positive change and fostering meaningful connections within our communities.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000)),
                ),
                Text(
                  "The Role",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10.8,
                ),
                Text(
                  "As a Front End Developer at Ex-Media, you will play a pivotal role in shaping the user experience of our digital products, crafting intuitive and engaging interfaces that delight our customers and drive business success.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000)),
                ),
                Text(
                  "What You’ll Need",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10.8,
                ),
                Text(
                  "Proficiency in JavaScript and HTML/CSSExperience with Front-end Frameworks Strong Understanding of Responsive Web Design",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
