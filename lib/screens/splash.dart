import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zeta_book/screens/login.dart';

import '../utilities/fade_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushReplacement(context, FadeRoute(page: LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffa0d5ea), Color(0xff67d0f6), Color(0xff237bb3)],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              child: Container(
                child: Image.asset(
                  'assets/images/splash_logo.png',
                  fit: BoxFit.contain,
                ),
                height: 200,
                width: 200,
              ),
              tag: 'splash_logo',
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Zeta Book',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'black_ops_one',
                fontStyle: FontStyle.normal,
                fontSize: 24,
                letterSpacing: 2,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
