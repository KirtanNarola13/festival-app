import 'package:flutter/material.dart';

import '../../Global/global.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: h / 30,
            ),
            SafeArea(
              child: Container(
                alignment: Alignment.center,
                height: h / 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blue.shade700,
                      ),
                    ),
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                        color: Colors.blue.shade700,
                      ),
                    ),
                    SizedBox(
                      width: w / 10,
                    ),
                  ],
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
                      image: AssetImage("lib/Images/login_page.png"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    height: h / 13,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Your email';
                        }
                        return null;
                      },
                      controller: Globals.emailController,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
