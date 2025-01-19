import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/IndentityVerification/ScanDocsBack.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class ScanDocs extends StatefulWidget {
  const ScanDocs({super.key});

  @override
  State<ScanDocs> createState() => _ScanDocsState();
}

class _ScanDocsState extends State<ScanDocs> {
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
                      text:scanDocumentFront,
                      color: kpurple1,
                      size: 24,
                      weight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                    MyText(
                      text:
                          scanFrontPagePrompt,
                      color: kgrey1,
                      size: 14,
                      weight: FontWeight.w500,
                      paddingBottom: 25,
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: CommonImageView(
                        imagePath: Assets.imagesScan,
                        width: 348,
                        height: 263,
                      ),
                    )
                  ],
                ),
              ),
              MyText(
                text: holdStill,
                color: kpurple1,
                size: 22,
                weight: FontWeight.bold,
                textAlign: TextAlign.center,
                paddingBottom: 40,
              ),
              MyButton(
                onTap: () {
                  Get.bottomSheet(ScanDocsBack(),isScrollControlled: true);
                },
                  buttonText: capture,
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
