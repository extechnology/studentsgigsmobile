import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

GoogleSignIn _googleSignIn = GoogleSignIn(
  clientId: "15124092057-q7saopofjt97svqnsd47t12n7ckn29qi.apps.googleusercontent.com",
  scopes: [
    'email',
  ],
);

Future<Map<String, dynamic>?> signInWithGoogle(BuildContext context) async {
  try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser == null) return null; // User canceled login

    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final String accessToken = googleAuth.accessToken!;
    final String idToken = googleAuth.idToken!;

    // Extract additional user details
    final String email = googleUser.email;
    final String? displayName = googleUser.displayName;

    print("Access Token: $accessToken");
    print("ID Token: $idToken");
    print("Email: $email");
    print("Display Name: $displayName");

    // Send ID Token, email, and username to your backend for verification
    final response = await http.post(
      Uri.parse("https://server.studentsgigs.com/api/employee/api/google-auth/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "id_token": idToken,
        "email": email,
        "username": displayName ?? "", // Handle null case
      }),
    );

    if (response.statusCode == 200) {
      Navigator.pushReplacementNamed(context, "OnboardProfile");
      return jsonDecode(response.body); // Return user data

    } else {
      print("Google Login Failed: ${response.body}");
      return null;
    }
  } catch (e) {
    print("Google Sign-In Error: $e");
    return null;
  }
}
/// SHA1:  C9:A7:4D:21:E5:B4:B3:D2:A8:C8:6B:8A:5B:3B:E4:76:A3:78:1C:19
/// com.example.gigs