import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<void> registerEmployee(TextEditingController email,
    TextEditingController userName,
    TextEditingController password,
    TextEditingController confirmPassword,
    BuildContext context) async {

  final Uri url =
      Uri.parse("http://localhost:8000/api/employee/user/register/");
  if (password.text == confirmPassword.text) {
    try {
      final response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            "email": email.text,
            "username": userName.text,
            "password": password.text,
            "password_confirm": confirmPassword.text
          }));
      if (response.statusCode == 201) {
        print("registration Success: ${response.body}");
        Navigator.pushReplacementNamed(context, "OnboardProfile");
      } else {
        print("Failed Registration : ${response.body}");
      }
    } catch (e) {
      print("The Error--------------------**$e");
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "entered password does not match",
          style: TextStyle(color: Color(0xffcc0000)),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
