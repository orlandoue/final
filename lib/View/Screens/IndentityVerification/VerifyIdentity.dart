import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/IndentityVerification/ScanDocsFront.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -16,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            height: 20,
            decoration: BoxDecoration(
              color: kwhite.withOpacity(.6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),
        Container(
          height: Get.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: kwhite,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Image.asset(
                      Assets.imagesDivider,
                      width: 40,
                      height: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                      text: identityVerification,
                      color: kpurple1,
                      size: 24,
                      weight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                    MyText(
                      text:
                          chooseDocumentPrompt,
                      color: kgrey1,
                      size: 14,
                      weight: FontWeight.w500,
                      paddingBottom: 15,
                      textAlign: TextAlign.center,
                    ),
                    MyTextField(
                      hint: passport,
                      hintColor: kpurple1,
                      focusedFilledColor: kpurple1.withOpacity(0.05),
                      bordercolor: kpurple1,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 12,bottom: 12,right: 10),
                        child: CommonImageView(
                          imagePath: Assets.imagesPassport,
                          height: 15,
                        ),
                      ),
                    ),
                    //
                           MyTextField(
                      hint: idCard,
                      hintColor: kpurple1,
                      focusedFilledColor: kpurple1.withOpacity(0.05),
                      bordercolor: kpurple1,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 12,bottom: 12,right: 10),
                        child: CommonImageView(
                          imagePath: Assets.imagesIdcard,
                          height: 15,
                        ),
                      ),
                    ),
                    //
                           MyTextField(
                      hint: driversLicense,
                      hintColor: kpurple1,
                      focusedFilledColor: kpurple1.withOpacity(0.05),
                      bordercolor: kpurple1,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 19,top: 12,bottom: 12,right: 10),
                        child: CommonImageView(
                          imagePath: Assets.imagesLicense,
                          height: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MyButton(
                onTap: () {
                  Get.bottomSheet(ScanDocs(),isScrollControlled: true);
                },
                buttonText: continuee,
                mBottom: 40,
                mhoriz: 20,
              ),
          
            ],
          ),
        ),
      ],
    );
  }
}
