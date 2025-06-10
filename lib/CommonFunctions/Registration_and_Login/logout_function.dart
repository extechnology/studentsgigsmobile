import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gigs/Commonscreens/optionscreen.dart';

Future<void> logout(BuildContext context) async {
  try {
    // Remove all stored tokens
    final secureStorage = FlutterSecureStorage();
    await secureStorage.delete(key: "access_token");
    await secureStorage.delete(key: "refresh_token");

    // Optional: Clear any other stored user data
    await secureStorage.deleteAll(); // This will remove everything

    // Navigate to login page and remove all previous routes
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => OptionScreen()),
      (Route<dynamic> route) => false,
    );

    // Optional: Show logout confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Logged out successfully')),
    );
  } catch (e) {
    print('Error during logout: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error during logout')),
    );
  }
}
