import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Auth/Login/LoginScreen.dart';
import 'package:orland_sports/View/Screens/Auth/SignUp/CreateAccount.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';
import 'package:orland_sports/generated/assets.dart';

class ChooseLogin extends StatefulWidget {
  const ChooseLogin({super.key});

  @override
  State<ChooseLogin> createState() => _ChooseLoginState();
}

class _ChooseLoginState extends State<ChooseLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 50,
                ),
                CommonImageView(
                  imagePath: Assets.imagesFinalSplash,
                  width: 270,
                  height: 360,
                  fit: BoxFit.contain,
                ),
                MyText(
                  text: 'MATCHMAKE',
                  color: kpurple1,
                  size: 32,
                  weight: FontWeight.w900,
                  textAlign: TextAlign.center,
                  paddingTop: 10,
                ),
                MyText(
                  text: setupMatchesTrackProgress,
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.w400,
                  paddingBottom: 15,
                  textAlign: TextAlign.center,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => CreateAccount());
                  },
                  buttonText: register,
                  mBottom: 15,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => LoginScreen());
                  },
                  buttonText: login,
                  fillColor: kwhite,
                  fontColor: kpurple1,
                  outlineColor: kpurple1,
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: agreementPrompt,
                        style: TextStyle(
                          color: kgrey1,
                          fontSize: 14,
                          fontFamily: AppFonts.boston,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: termsOfService,
                        style: TextStyle(
                          color: kpurple1,
                          fontSize: 14,
                          fontFamily: AppFonts.boston,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' & ',
                        style: TextStyle(
                          color: kgrey1,
                          fontSize: 14,
                          fontFamily: AppFonts.boston,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: privacyPolicy,
                        style: TextStyle(
                          color: kpurple1,
                          fontSize: 14,
                          fontFamily: AppFonts.boston,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
