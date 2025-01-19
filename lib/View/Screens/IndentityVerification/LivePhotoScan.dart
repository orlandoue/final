import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/ProfileCompletion/Profileinfo1.dart';

import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class ScanLiveImage extends StatefulWidget {
  const ScanLiveImage({super.key});

  @override
  State<ScanLiveImage> createState() => _ScanLiveImageState();
}

class _ScanLiveImageState extends State<ScanLiveImage> {
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
                      text: livePhotoScan,
                      color: kpurple1,
                      size: 24,
                      weight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                    MyText(
                      text:
                         livePhotoScanPrompt,
                      color: kgrey1,
                      size: 14,
                      weight: FontWeight.w500,
                      paddingBottom: 25,
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(dummyImage),
                              fit: BoxFit.cover),
                          border: Border.all(color: kpurple1, width: 3),
                        ),
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
                  //2 dialogboxes to be used under conditions
                  SuccessDialog.showSuccessDialog(success,
documentsUploadedSuccessfully,
                      ontap: (){
                         Get.to(() =>ProfileInfo1() );
                      }
                      );
                  // SuccessDialog.showSuccessDialog('Failed!',
                  //   "Try not to shake camera while capturing photo of ID, make sure photo is clear.",ButtonText: 'Try again',ontap: (){},image: Assets.imagesFail);
                },
                buttonText:capture,
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
