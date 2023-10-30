import 'package:festival_post/Screens/Login_Signup/Signup.dart';
import 'package:festival_post/Screens/Login_Signup/login.dart';
import 'package:flutter/material.dart';
import 'Screens/Login_Signup/Login_Signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginSignup(),
        'login': (context) => const Login(),
        'signup': (context) => const Signup(),
      },
    ),
  );
}
