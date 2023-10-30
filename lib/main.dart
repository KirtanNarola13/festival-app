import 'package:flutter/material.dart';
import 'Screens/Login_Signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginSignup(),
      },
    ),
  );
}
