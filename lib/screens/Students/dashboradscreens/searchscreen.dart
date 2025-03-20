import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/gigs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      body: SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                          size: 17,
                        ),
                        filled: true,
                        fillColor: Color(0xff004673),
                        labelText: "Search Gigs",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffDADADA)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.filter_list, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      fixedSize: Size(52, 52),
                      backgroundColor: Color(0xffEB8125),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, bottom: 12, top: 30),
              child: Text(
                "Job Categories",
                style: TextStyle(
                  color: Color(0xff3F414E),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 140, // Enough space for scrolling
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10, right: 8, bottom: 8, left: 8),
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnii63NitJfNQ8ryTfHuFUpNVEdwzDoQJ8PPgq0f1WX9imHI5AI-2Zp3nvY6EV2rl-uP0&usqp=CAU",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Digital Marketing\nand Social Media",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, bottom: 5, top: 10),
              child: Text(
                "Gigs For You",
                style: TextStyle(
                  color: Color(0xff3F414E),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 12,left: 12),
              height: MediaQuery.of(context).size.height/2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Gigs(text1: 'Start', text2: '7 Days', showLikeButton: true, // Change color when liked
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
