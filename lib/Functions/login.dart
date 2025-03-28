import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

Future<void> loginUser(TextEditingController userName,
    TextEditingController password, BuildContext context) async {

  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  final Uri url = Uri.parse("http://localhost:8000/api/employee/api/token/");

  try {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"username": userName.text, "password": password.text}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final String accessToken =
          data['access']; // Assuming API returns 'access' token
      print("Token : $accessToken");
      final String refreshToken =
          data['refresh']; // Assuming API returns 'refresh' token

      // Store tokens securely
      await secureStorage.write(key: "access_token", value: accessToken);
      await secureStorage.write(key: "refresh_token", value: refreshToken);

      print("Login successful! Token stored.");
      Navigator.pushNamed(context, "DashBoard");
    } else {
      print("Login failed: ${response.body}");
    }
  } catch (e) {
    print("Error during login: $e");
  }
}
