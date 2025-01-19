import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Auth/Login/LoginScreen.dart';
import 'package:orland_sports/View/Screens/Auth/SignUp/OTPVerififcation.dart';

import 'package:orland_sports/View/Widgets/Checkbox.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                  text:createAnAccount,
                  color: kpurple1,
                  size: 24,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                MyText(
                  text:
                     startFindingMatches,
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.w500,
                  paddingBottom: 15,
                  textAlign: TextAlign.center,
                ),
                                MyTextField(
                  hint: yourNameHere,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: yourEmailHere,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: createPassword,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: kgrey1,
                    
                  ),
                     focusedFilledColor: kpurple1.withOpacity(0.05)
                ),
                 MyTextField(
                  hint:retypePassword,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: kgrey1,
                    
                  ),
                     focusedFilledColor: kpurple1.withOpacity(0.05)
                ),
         SizedBox(height: 10,),
                Row(
                  children: [
                    CustomCheckBox(
                      isActive: true,
                      onTap: () {},
                      iscircle: false,
                    ),
                    Row(
                      children: [
                         MyText(
                          text: agreeTo,
                          color: kgrey1,
                          size: 14,
                          weight: FontWeight.w600,
                          paddingLeft: 6,
                        ),
                        MyText(
                          text: terms,
                          color: kpurple1,
                          size: 14,
                          weight: FontWeight.w700,
                         
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {
                    Get.bottomSheet(OTPVerfication(),isScrollControlled: true);
                  },
                  buttonText: register,
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
                text: alreadyHaveAccount,
                color: kgrey1,
                paddingLeft: 2,
                size: 15,
                weight: FontWeight.w400,
              ),
              MyText(
                text: login,
                color: kpurple1,
                size: 16,
                weight: FontWeight.w700,
                onTap: () {},
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


