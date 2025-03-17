import 'package:flutter/material.dart';

class BenefitRow extends StatelessWidget {
  final Widget leading; // Accepts Icon or CircleAvatar
  final String title;
  final String subtitle;

  const BenefitRow({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start, // Align elements properly
        children: [
          leading, // Can be an Icon or CircleAvatar
          SizedBox(width: 10),
          Expanded( // Ensures text wraps properly
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18, // Adjusted size
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  softWrap: true, // Ensures wrapping
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

