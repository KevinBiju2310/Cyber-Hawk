import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => Homepage()))));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/logo.png')),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              'CYBER HAWK',
              style: TextStyle(
                  color: Colors.white, fontSize: 40, fontFamily: 'IBM'),
            ),
          )
        ],
      ),
    );
  }
}
