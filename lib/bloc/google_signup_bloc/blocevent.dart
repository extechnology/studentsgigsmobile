import 'package:flutter/material.dart';

abstract class GoogleAuthEvent {}

class GoogleSignInRequested extends GoogleAuthEvent {
  final BuildContext context;

  GoogleSignInRequested(this.context);
}
