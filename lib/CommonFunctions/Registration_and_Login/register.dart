import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gigs/ApiClasses/apiconstant.dart';
import 'package:http/http.dart' as http;

import '../Other/otp_verification.dart';

Future<void> registerUser(
  TextEditingController email,
  TextEditingController userName,
  TextEditingController password,
  TextEditingController confirmPassword,
  BuildContext context,
  String userType,
) async {
  if (password.text != confirmPassword.text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Passwords do not match"),
        backgroundColor: Colors.red,
      ),
    );
    return;
  }

  try {
    // Step 1: Try to send OTP
    final otpResult = await sendOTP(
        email.text, userName.text, password.text, confirmPassword.text);

    if (!otpResult['success']) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(otpResult['message']),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Step 2: Show OTP verification dialog
    bool? isVerified = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => OTPVerification(
        email: email.text,
        onVerified: (otp) async {
          print("OTP entered: $otp");
          final verified =
              await verifyOTP(email.text, otp, userName.text, password.text);
          if (verified) {
            print("OTP verified successfully");
            Navigator.of(context).pop(true); // OTP verified
          } else {
            print("OTP verification failed");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Invalid OTP"),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        onResend: () async {
          await resendOTP(email.text);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("OTP resent successfully")),
          );
        },
      ),
    );

    // Step 3: Register the user only if OTP is verified
    if (isVerified == true) {
      final Uri registerUrl = userType == "student"
          ? Uri.parse("${ApiConstants.baseUrl}api/employee/user/register/")
          : Uri.parse("${ApiConstants.baseUrl}api/employer/final-register/");

      final response = await http.post(
        registerUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "email": email.text,
          "username": userName.text,
          "password": password.text,
          "password_confirm": confirmPassword.text,
        }),
      );

      if (response.statusCode == 201) {
        Navigator.pushReplacementNamed(
          context,
          userType == 'student' ? 'OnboardProfile' : 'EmployerProfile',
        );
      } else {
        final errorData = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorData['message'] ?? 'Registration failed'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error: $e"), backgroundColor: Colors.red),
    );
  }
}

// OTP Service Functions
Future<Map<String, dynamic>> sendOTP(String email, String username,
    String password, String confirmPassword) async {
  try {
    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}api/employee/user/register/"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "email": email,
        "username": username,
        "password": password,
        "password_confirm": confirmPassword,
      }),
    );

    print("OTP Response Code: ${response.statusCode}");
    print("OTP Response Body: ${response.body}");

    if (response.statusCode == 201) {
      return {"success": true};
    } else {
      final data = jsonDecode(response.body);
      String message = "Something went wrong";

      if (data.containsKey("email")) {
        message = "Email is already registered. Try logging in.";
      } else if (data.containsKey("password")) {
        message = "Password is too weak or invalid.";
      } else if (data.containsKey("username")) {
        message = "Username already exists or is invalid.";
      } else if (data is Map) {
        message = data.values.first[0]; // generic fallback
      }

      return {"success": false, "message": message};
    }
  } catch (e) {
    print("Send OTP error: $e");
    return {"success": false, "message": "Failed to connect to the server."};
  }
}

Future<bool> verifyOTP(
    String email, String otp, String username, String password) async {
  try {
    final response = await http
        .post(
          Uri.parse("${ApiConstants.baseUrl}api/employee/verify-otp/"),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            "email": email,
            "otp": otp,
            "username": username,
            "password": password,
          }),
        )
        .timeout(Duration(seconds: 10)); // timeout added

    print("OTP verify response: ${response.statusCode}");
    print("Response body: ${response.body}");

    return response.statusCode == 200;
  } catch (e) {
    print("OTP verification error: $e");
    return false;
  }
}

Future<void> resendOTP(String email) async {
  try {
    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}api/employee/resend-otp/"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"email": email}),
    );

    print("OTP resend: ${response.statusCode}");
    print("Response body: ${response.body}");
  } catch (e) {
    print("OTP resend error: $e");
  }
}
