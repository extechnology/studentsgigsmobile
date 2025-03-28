import 'package:flutter/material.dart';

class Gigs extends StatelessWidget {
  Gigs({
    super.key,
    this.icon,
    required this.text1,
    required this.text2,
    required this.showLikeButton,
  });

  final IconData? icon;
  final String text1;
  final String text2;
  final bool showLikeButton;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "GigsDetailScreen"),
      child: Container(
        height: 250,
        width: screenWidth * 0.9,
        padding: EdgeInsets.all(screenWidth * 0.05),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(21)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Backend Developer",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff000000),
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFA6572),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Center(
                    child: Text(
                      "Kerala",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xff000000),
                        fontSize: screenWidth * 0.025,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                if (showLikeButton) LikeButton(),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                Image.asset(
                  "assets/images/logos/image (6).png",
                  width: screenWidth * 0.05,
                  height: screenWidth * 0.05,
                ),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  "Ex- Technology",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.03,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.04),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gig Pay",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xff000000),
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.01),
                    Text(
                      "₹30,000 - Project Based",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xff000000),
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: screenWidth * 0.04),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experience Level",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xff000000),
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.01),
                    Text(
                      "Senior",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xff000000),
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: screenWidth * 0.04),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: screenWidth * 0.01),
                      Text(
                        text2,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      child: Icon(
        isLiked ? Icons.favorite_outlined : Icons.favorite_border_outlined,
        color: isLiked ? Color(0xffFB4A59) : Color(0xff1A1A1A),
        size: MediaQuery.of(context).size.width * 0.06,
      ),
    );
  }
}