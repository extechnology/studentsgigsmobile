import 'dart:async'; // For TimeoutException
import 'dart:convert';
import 'dart:io'; // For SocketException
import 'package:flutter/material.dart'; // For ScaffoldMessenger
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart'; // For debugPrint

GoogleSignIn _googleSignIn = GoogleSignIn(
  clientId:
      "15124092057-q7saopofjt97svqnsd47t12n7ckn29qi.apps.googleusercontent.com",
  scopes: ['email'],
);

Future<Map<String, dynamic>?> signInWithGoogle(BuildContext context) async {
  try {
    // Initialize Google Sign-In
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return null; // User canceled login

    // Get authentication tokens
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final String? accessToken = googleAuth.accessToken;
    final String? idToken = googleAuth.idToken;
    final FlutterSecureStorage secureStorage = FlutterSecureStorage();

    // Validate tokens
    if (accessToken == null || idToken == null) {
      throw Exception('Google authentication tokens not received');
    }

    // Prepare request to your backend
    final response = await http
        .post(
          Uri.parse(
              "https://server.studentsgigs.com/api/employee/api/google-auth/"),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
          body: jsonEncode({
            "id_token": idToken,
            "email": googleUser.email,
            "username": googleUser.displayName ?? "",
            "access_token": accessToken,
          }),
        )
        .timeout(const Duration(seconds: 10));

    // Handle response
    final responseData = jsonDecode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      // Success - navigate to onboarding
      await secureStorage.write(
          key: 'auth_token',
          value: responseData['token'] // Assuming your backend returns a token
          );
      await secureStorage.write(
          key: 'refresh_token',
          value: responseData['refresh_token'] // If using refresh tokens
          );
      print(responseData);
      if (context.mounted) {
        Navigator.of(context).pushReplacementNamed("OnboardProfile");
      }
      return responseData;
    } else {
      // Server returned error
      throw Exception(
          'Server error: ${response.statusCode} - ${responseData['message'] ?? 'Unknown error'}');
    }
  } on SocketException catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No internet connection")),
      );
    }
    debugPrint('Network error: $e');
  } on TimeoutException catch (_) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Connection timeout")),
      );
    }
    debugPrint('Request timed out');
  } on http.ClientException catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Connection failed: ${e.message}")),
      );
    }
    debugPrint('HTTP client error: $e');
  } catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sign-in failed: ${e.toString()}")),
      );
    }
    debugPrint('Google Sign-In error: $e');
  }
  return null;
}
