import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/textfield.dart';

class EmployerProfile3 extends StatelessWidget {
   EmployerProfile3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F2ED),
        leading: Container(
          margin: EdgeInsets.only(left: 10,),
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
        // toolbarHeight: 165,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff313131)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 13),
                child: Text("Job Type",style: TextStyle(fontFamily: "Poppins",fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff3F414E)),),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //DefaultTabController.of(context)?.animateTo(2);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(96, 41),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Online",
                        style: TextStyle(fontFamily: "Poppins",
                            color: Color(0xff242424),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //DefaultTabController.of(context)?.animateTo(2);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(96, 41),
                        backgroundColor: Color(0xffEB8125),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Offline",
                        style: TextStyle(fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //DefaultTabController.of(context)?.animateTo(2);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(96, 41),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Both",
                        style: TextStyle(fontFamily: "Poppins",
                            color: Color(0xff242424),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "Gig category",
                  style: TextStyle(fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              CustomTextFormField(
                hintText: "Tech",
                dropdownItems: ["Flutter", "React", "Java"],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 13),
                child: Text(
                  "Payment type",
                  style: TextStyle(fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              CustomTextFormField(
                hintText: "Monthly",
                dropdownItems: [],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 13),
                child: Text(
                  "City",
                  style: TextStyle(fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              CustomTextFormField(
                hintText: "",
                dropdownItems: ["Kerala","Mumbai"],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 13),
                child: Text(
                  "Availability",
                  style: TextStyle(fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              CustomTextFormField(
                hintText: "Select your availablity",
                dropdownItems: ["immidiate", "On work", "remote"],
              ),
              SizedBox(height: 20,),
              Center(
                child: SizedBox(
                  width: 107,
                  //height: 56,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "EmployerDashboard");
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: 16),
                    ),
                    backgroundColor: Color(0xff004673),
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
