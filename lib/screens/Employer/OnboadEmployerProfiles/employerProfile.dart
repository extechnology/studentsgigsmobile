import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EmployerProfile extends StatelessWidget {
  const EmployerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Color(0xffF9F2ED),
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Hire your ",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Color(0xff3F414E)),
              ),
              Text(
                "Preferred Categorie",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Color(0xff3F414E)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20,top: 8),
                child: Container(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Explore hiring categories such as full-time roles, part-time & freelance work,internships & entry-level positions, and remote & hybrid opportunities to find the right talent for your business .",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 17,
                        fontWeight: FontWeight.w200,
                        height: 1.5),
                  ),
                ),
              ),
              Expanded(
                child: MasonryGridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Two columns
                  ),
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  itemBuilder: (context, index) {
                    // // Random height between 150 to 300
                    // double randomHeight = 150 + random.nextInt(150).toDouble();
                    return Container(
                      height: index % 2 == 0 ? 192 : 137,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffD9D9D9),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 23,left: 23),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                  child: Image.asset("assets/images/others/undraw_in-the-office_e7pg 2.png")
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Digital Marketing and Social Media",
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: 100,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "EmployerProfile2");
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Color(0xff0ffEB8125),
          ),
        ),
      ),
    );
  }
}
