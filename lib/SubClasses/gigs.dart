import 'package:flutter/material.dart';

class Gigs extends StatelessWidget {
  Gigs({
    super.key,
    this.iconButton,
    this.showFavButton = false,
    this.showDurationInfo = false,
  });

  final Widget? iconButton;
  final bool showFavButton;
  final bool showDurationInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "GigsDetailScreen");
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15, top: 12, bottom: 11, right: 37),
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Frontend Developer",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 10),
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
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                ),
                // SizedBox(width: 30,),
                if (showFavButton) // Only show if enabled
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outlined,color: Colors.red,),
                    ),
                  ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/logos/image (6).png"),
                const SizedBox(width: 5),
                const Text(
                  "Ex- Media",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                      color: Color(0xff000000)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Gig Pay",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 8,
                          fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "₹30,000 - Project Based",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(width: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Experience Level",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 8,
                          fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Senior",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                 SizedBox( width: 10),
                if (showDurationInfo) // Only show if enabled
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Started",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "4 days",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
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
