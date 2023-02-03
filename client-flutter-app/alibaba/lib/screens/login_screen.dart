import 'dart:developer';

import 'package:alibaba/constant.dart';
import 'package:alibaba/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String nationalId = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 80),
            RichText(
              // Controls visual overflow
              overflow: TextOverflow.clip,

              // Controls how the text should be aligned horizontally
              textAlign: TextAlign.end,

              // Control the text direction
              textDirection: TextDirection.rtl,

              // Whether the text should break at soft line breaks
              softWrap: true,
              // Maximum number of lines for the text to span
              maxLines: 1,
              // The number of font pixels for each logical pixel
              textScaleFactor: 1,
              text: TextSpan(
                text: 'Di ',
                style: TextStyle(
                  color: kGradientColorTwo,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ImFellEnglish",
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Twin',
                    style: TextStyle(
                      color: Color(0xFF898793),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  "assets/images/logo.png",
                )),
              ),
              height: 250,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              padding: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 137, 135, 147),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person_outline),
                  Container(
                    width: 100.w,
                    height: 60.h,
                    margin: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          nationalId = value;
                        });
                      },
                      maxLines: 1,
                      decoration: InputDecoration(
                        label: Text("National ID"),
                        border: InputBorder.none,
                        labelStyle:
                            TextStyle(fontSize: 20.0, color: kPrimaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              padding: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 137, 135, 147),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.lock_outline),
                  Container(
                    width: 100.w,
                    height: 60.h,
                    margin: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      obscureText: true,
                      maxLines: 1,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        border: InputBorder.none,
                        labelStyle:
                            TextStyle(fontSize: 20.0, color: kPrimaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (nationalId == "1234567890" && password == "123456") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomBar()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Center(
                          child: Text('National ID or Password is incorrect')),
                    ),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Container(
                    height: 28.h,
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
