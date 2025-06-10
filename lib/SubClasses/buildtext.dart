import 'package:flutter/material.dart';

Widget buildSectionLabel(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 10),
    child: Text(
      text,
      style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xff3F414E)),
    ),
  );
}
