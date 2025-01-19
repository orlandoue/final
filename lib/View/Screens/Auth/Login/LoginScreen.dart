import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/BottomNavbar.dart';
import 'package:orland_sports/View/Screens/Auth/Login/ForgetPassword.dart';
import 'package:orland_sports/View/Screens/Auth/SignUp/CreateAccount.dart';
import 'package:orland_sports/View/Widgets/Checkbox.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(haveBackButton: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                  text:welcomeBack,
                  color: kpurple1,
                  size: 24,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                MyText(
                  text:
                   enterCredentials,
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.w500,
                  paddingBottom: 15,
                  textAlign: TextAlign.center,
                ),
                MyTextField(
                  hint: yourEmailHere,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                    hint: yourpasswordhere,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: kgrey1,
                    ),
                    focusedFilledColor: kpurple1.withOpacity(0.05)),
                MyText(
                    text: forgetPassword,
                    color: kgrey1,
                    size: 14,
                    weight: FontWeight.w600,
                    paddingBottom: 15,
                    onTap: () {
                      Get.bottomSheet(ForgetPassword(),
                          isScrollControlled: true);
                    },
                    textAlign: TextAlign.right),
                Row(
                  children: [
                    CustomCheckBox(
                      isActive: true,
                      onTap: () {},
                      iscircle: false,
                    ),
                    MyText(
                      text: rememberMe,
                      color: kpurple1,
                      size: 14,
                      weight: FontWeight.w600,
                      paddingLeft: 6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => BottomNavBar());
                  },
                  buttonText: login,
                  mBottom: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: kgrey2,
                        thickness: 1,
                        indent: 5,
                        endIndent: 10,
                      ),
                    ),
                    MyText(
                      text: orContinueWith,
                      size: 14,
                      color: kgrey1,
                      weight: FontWeight.w500,
                    ),
                    Expanded(
                      child: Divider(
                        color: kgrey2,
                        thickness: 1,
                        indent: 10,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginOptions(
                      icon: Assets.imagesGoogle,
                      ontap: () {},
                    ),
                    LoginOptions(
                      icon: Assets.imagesApple,
                      ontap: () {},
                    ),
                    LoginOptions(
                      icon: Assets.imagesFacebook,
                      ontap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: dontHaveAccount,
                color: kgrey1,
                size: 15,
                weight: FontWeight.w400,
                paddingRight: 6,
              ),
              MyText(
                text: createAccount,
                color: kpurple1,
                size: 16,
                weight: FontWeight.w700,
                onTap: () {
                  Get.to(() => CreateAccount());
                },
              ),
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

class LoginOptions extends StatelessWidget {
  final String icon;
  final VoidCallback ontap;
  const LoginOptions({
    super.key,
    required this.icon,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kgrey2)),
        child: Center(
            child: CommonImageView(
          imagePath: icon,
          width: 21,
          height: 21,
        )),
      ),
    );
  }
}
