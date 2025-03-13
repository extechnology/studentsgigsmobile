import 'package:flutter/material.dart';
import 'package:gigs/classes/textfield.dart';

class OnboardProfile2 extends StatelessWidget {
  const OnboardProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 60,
            decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xffE3E3E3)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,size: 18,),
            ),
          ),
        ),
        toolbarHeight: 136,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 100, right: 35, left: 35),
          child: Text(
            "Job Type",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Color(0xff3F414E)),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff313131)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                     backgroundColor: Color(0xffE3E3E3),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8),
                     ),
                   ),
                   child: Text("Online",style: TextStyle(color: Color(0xff242424),fontSize: 14,fontWeight: FontWeight.w400),),
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
                   child: Text("Offline",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                 ),
                 ElevatedButton(
                   onPressed: () {
                     //DefaultTabController.of(context)?.animateTo(2);
                   },
                   style: ElevatedButton.styleFrom(
                     fixedSize: Size(96, 41),
                     backgroundColor: Color(0xffE3E3E3),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8),
                     ),
                   ),
                   child: Text("Both",style: TextStyle(color: Color(0xff242424),fontSize: 14,fontWeight: FontWeight.w400),),
                 ),
               ],
             ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Text("Technical Skills",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Color(0xff3F414E)),),
            ),
            CustomTextFormField(
              icon: Icons.arrow_drop_down,
              hintText: "Search Your Skill or Create New",
            )
          ],
        ),
      ),
    );
  }
}
