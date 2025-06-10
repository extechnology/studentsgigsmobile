import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gigs/StudentFunctions/Profile_Update/PersonalInfo_Update/employee_detailsFeatching.dart';
import 'package:http/http.dart' as http;

import '../../ApiClasses/apiconstant.dart';

Future<void> loginUser(
  TextEditingController userName,
  TextEditingController password,
  BuildContext context,
  String userType, // Add userType parameter ('student' or 'employer')
) async {
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  // Determine API endpoint based on user type
  final Uri url = userType == 'student'
      ? Uri.parse("${ApiConstants.baseUrl}api/employee/api/token/")
      : Uri.parse("${ApiConstants.baseUrl}api/employer/api/token/");

  try {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"username": userName.text, "password": password.text}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final String accessToken = data['access'];
      final String refreshToken = data['refresh'];

      // Decode JWT (split and decode payload)
      final parts = accessToken.split('.');
      if (parts.length != 3) {
        throw Exception('Invalid token');
      }
      final payload = jsonDecode(
          utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
      final int userId = payload['user_id'];

      // Store tokens and user type securely
      await secureStorage.write(key: "access_token", value: accessToken);
      await secureStorage.write(key: "refresh_token", value: refreshToken);
      await secureStorage.write(key: "user_type", value: userType);
      await secureStorage.write(key: "user_id", value: userId.toString());

      print("Login successful! Token stored.");
      // print("Access Token $accessToken");
      // print(" Token $refreshToken");
      print("User ID: $userId");

      await fetchEmployeeDetails();

      // Navigate to appropriate dashboard
      Navigator.pushReplacementNamed(
        context,
        userType == 'student' ? 'DashBoard' : 'EmployerProfile',
      );
    } else {
      final errorData = jsonDecode(response.body);
      final errorMessage =
          errorData['detail'] ?? 'Login failed. Please try again.';

      print("Login failed: $errorMessage");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  } catch (e) {
    print("Error during login: $e");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Network error: Could not connect to server.")),
    );
  }
}
