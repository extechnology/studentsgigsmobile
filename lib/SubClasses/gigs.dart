import 'package:flutter/material.dart';

class Gigs extends StatelessWidget {
  const Gigs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: EdgeInsets.only(
            bottom: 11, right: 14, left: 15, top: 12),
        //height: 112,
        //width: 278.8333435058594,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Frontend Developer",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 10,),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Online",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff9FEBA8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          4),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Image.asset("assets/images/image.jpg"),
                SizedBox(width: 5,),
                Text("Ex- Media",style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 11,color: Color(0xff000000)
                ),)
              ],
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gig Pay",style: TextStyle(color: Color(0xff000000),fontSize: 8,fontWeight: FontWeight.w200),),
                    SizedBox(height: 4,),
                    Text("₹30,000 - Project Based",style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(width: 126,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Experience Level",style: TextStyle(color: Color(0xff000000),fontSize: 8,fontWeight: FontWeight.w200),),
                    SizedBox(height: 4,),
                    Text("Senior",style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.w400),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
