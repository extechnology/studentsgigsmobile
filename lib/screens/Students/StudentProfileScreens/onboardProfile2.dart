import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/textfield.dart';

class OnboardProfile2 extends StatelessWidget {
  const OnboardProfile2({super.key});

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
              Navigator.pushNamed(context, "OnboardProfile");
            },
            icon: Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "OnboardProfile3");
            },
            child: Text(
              "Skip",
              style: TextStyle(fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff313131)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 25,left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 17,left: 34),
                child: Text("Add your profile image",style: TextStyle(fontFamily: "Poppins",color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              ),
              Center(
                child: CircleAvatar(
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
              ),
              SizedBox(height: 30,),
              Text("Portfolio/LinkedIn Profile",style: TextStyle(fontFamily: "Poppins",color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 29),
                child: CustomTextFormField(
                  hintText: "Enter or paste your profile link",
                ),
              ),
              Text("Available Work Hours",style: TextStyle(fontFamily: "Poppins",color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 29),
                child: CustomTextFormField(
                  hintText: "Hours",
                ),
              ), Text("Available Work Period",style: TextStyle(fontFamily: "Poppins",color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, right: 4, top: 13, bottom: 29),
                      child: CustomTextFormField(
                        hintText: "DD/MM/YYYY",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4, top: 13, bottom: 29),
                      child: CustomTextFormField(
                        hintText: "DD/MM/YYYY",
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40,top: 10,),
                  child: SizedBox(
                    width: 100,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "OnboardProfile3");
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
