import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gigs/ApiClasses/apiconstant.dart';
import 'package:http/http.dart' as http;

Future<void> resetPassword(String email, BuildContext context) async {
  try {
    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}api/employee/reset-password/"),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({"email": email}),
    );

    if (response.statusCode == 200) {
      // Success - you can customize this
      Navigator.pop(context); // Close dialog

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password reset email sent!")),
      );
      print("Success: Email sent for password reset.");
    } else {
      // Failure - handle specific errors if needed
      print("Failed to send email. Status Code: ${response.statusCode}");
      print("Response body: ${response.body}");
    }
  } catch (e) {
    print("Error occurred ---- $e");
  }
}
