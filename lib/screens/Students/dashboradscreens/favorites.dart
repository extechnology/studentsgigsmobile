import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/gigs.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            Text(
              "Saved Gigs",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                child: Gigs(
                  text1: 'Start',
                  text2: '7 Days',
                  showLikeButton: true,
                ))
          ],
        ),
      ),
    );
  }
}
