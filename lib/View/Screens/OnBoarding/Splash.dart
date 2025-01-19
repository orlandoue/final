import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:orland_sports/View/Screens/OnBoarding/OnboardingMain.dart';
import 'package:orland_sports/const/appColors.dart';
import '../../../generated/assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Color _backgroundColor = kwhite;
Color imageColor=kpurple1;
  @override
  void initState() {
    super.initState();
    _startSplashSequence();
  }

  void _startSplashSequence() {
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _backgroundColor =kpurple1;
        imageColor=kwhite;
      });

      Future.delayed(Duration(seconds: 3), () {
        _navigateToLoginScreen();
      });
    });
  }

  void _navigateToLoginScreen() {
   Get.offAll(() => OnboardingMain());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assets.imagesLogo,width: 317,height: 121.5,color: imageColor,)),
        ],
      ),
    );
  }
}