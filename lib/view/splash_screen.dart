import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiktok/theme/theme.dart';
import 'package:tiktok/view/bottom_navbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavbarScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTikTokBlack,
      body: Center(
        child: Image.asset('assets/images/tik-tok.png'),
      ),
    );
  }
}
