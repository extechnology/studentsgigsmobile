import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/textfield.dart';

class EmpolyerProfile2 extends StatelessWidget {
  const EmpolyerProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar:  AppBar(
        backgroundColor: Color(0xffF9F2ED),
        leading: Container(
          margin: EdgeInsets.only(left: 7,top: 10),
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
          padding: const EdgeInsets.only(right: 35,left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 17,left: 34),
                child: Text("Add Your Company Logo",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              ),
              CircleAvatar(
                radius: 65,
                backgroundColor: Color(0xff004673),
                child: Stack(
                  children: [
                    Center(
                        child: Image.asset("assets/images/others/Group 69.png")),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 41,
                        width: 41,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffEB8125),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mode_edit_outline_outlined),
                          color: Colors.white,
                          iconSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text("Company Name",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 29),
                child: CustomTextFormField(
                  //hintText: "Enter or paste your profile link",
                ),
              ),
              Text("Indusry Type",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 29),
                child: CustomTextFormField(
                 dropdownItems: [],
                ),
              ), Text("Company info",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 29),
                child: CustomTextFormField(
                  //hintText: "Enter or paste your profile link",
                ),
              ),
              Text("Country",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 30),
                child: CustomTextFormField(
                  hintText: "Select your Country",
                  dropdownItems: [],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40,top: 10,),
                  child: SizedBox(
                    width: 100,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "EmployerProfile3");
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Color(0xff0ffEB8125),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
