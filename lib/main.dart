import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/BottomNavbar.dart';
import 'package:orland_sports/View/Screens/Home/home.dart';
import 'package:orland_sports/View/Screens/OnBoarding/OnboardingMain.dart';
import 'package:orland_sports/View/Screens/OnBoarding/Splash.dart';
import 'package:orland_sports/controllers/OnBoardingController.dart';

void main() {
   Get.put(POnboardingController());
  runApp(const MyApp());
}
final String dummyImage2 =
    'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
final String dummyImage =
    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    );
  }
}
