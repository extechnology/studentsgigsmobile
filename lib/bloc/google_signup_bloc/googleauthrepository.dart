import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    serverClientId:
        "15124092057-q7saopofjt97svqnsd47t12n7ckn29qi.apps.googleusercontent.com",
    scopes: ['email'],
  );

  Future<Map<String, dynamic>?> signInWithGoogle(BuildContext context) async {
    try {
      //print("1. Starting Google Sign-In");
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      //print("2. Getting authentication");
      final googleAuth = await googleUser.authentication;
      //print("3. Tokens received - ID: ${googleAuth.idToken != null}");

      if (googleAuth.accessToken == null || googleAuth.idToken == null) {
        throw Exception("Google token missing");
      }

      /** First verify server connection**/
      // try {
      //   final testResponse = await http
      //       .get(Uri.parse("https://c409-103-176-184-9.ngrok-free.app/"));
      //   print("Server connection test: ${testResponse.statusCode}");
      // } catch (e) {
      //   throw Exception(
      //       "Cannot connect to server. Please check if it's running.");
      // }

      //print("4. Calling backend API");
      final response = await http.post(
        Uri.parse(
            "https://c409-103-176-184-9.ngrok-free.app/api/employee/api/google-auth/"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: jsonEncode({
          "id_token": googleAuth.idToken,
          "email": googleUser.email,
          "username": googleUser.displayName ?? "",
          "access_token": googleAuth.accessToken,
        }),
      );

      //print("5. Response received: ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        const storage = FlutterSecureStorage();
        await storage.write(key: 'auth_token', value: data['token']);
        await storage.write(key: 'refresh_token', value: data['refresh_token']);
        return data; // Just return the data
      } else {
        throw Exception("Server error: ${response.body}");
      }
    } catch (e) {
      print("Authentication error: $e");
      throw Exception("Login failed: ${e.toString()}");
    }
  }
}
