import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              height: h / 20,
              child: Text(
                "Wellcome To FESTIV",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: Colors.blue.shade700,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("lib/Images/main_login_signup.png"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(
                  height: h / 10,
                ),
                const Icon(
                  Icons.lock,
                  color: Colors.blue,
                  size: 62,
                ),
                SizedBox(
                  height: h / 35,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  height: h / 15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    border: Border.all(
                      color: Colors.blue.shade700,
                      width: 2,
                    ),
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: h / 50,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  height: h / 15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    border: Border.all(
                      color: Colors.blue.shade700,
                      width: 2,
                    ),
                  ),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
