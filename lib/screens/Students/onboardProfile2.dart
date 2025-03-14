import 'package:flutter/material.dart';
import 'package:gigs/classes/textfield.dart';

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
            color: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.only(right: 35,left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13,bottom: 17,left: 34),
              child: Text("Add your profile image",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
            ),
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("assets/images/Group 69.jpg",),
              child: Align(
                alignment: Alignment.bottomRight,
                  child: Container(
                    height: 41,
                    width: 41,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffEB8125),
                    ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.mode_edit_outline_outlined),color: Colors.white,iconSize: 16,))),
            ),
            SizedBox(height: 30,),
            Text("Portfolio/LinkedIn Profile",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(top: 13,bottom: 29),
              child: CustomTextFormField(
                hintText: "Enter or paste your profile link",
              ),
            ),
            Text("Available Work Hours",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(top: 13,bottom: 29),
              child: CustomTextFormField(
                hintText: "Hours",
              ),
            ), Text("Available Work Period",style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w600,fontSize: 20),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 143,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13,bottom: 29),
                    child: CustomTextFormField(
                      hintText: "DD/MM/YYYY",
                    ),
                  ),
                ),
                Container(
                  width: 143,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13,bottom: 29),
                    child: CustomTextFormField(
                      hintText: "DD/MM/YYYY",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
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
    );
  }
}
