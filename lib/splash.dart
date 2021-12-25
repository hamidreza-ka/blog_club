import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then((value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingScreen()),
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Assets.img.background.splashBackground.image(
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Assets.img.icons.logo.svg(
              width: 80,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
