import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/Pinput.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';

import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class OTPVerfication extends StatefulWidget {
  const OTPVerfication({super.key});

  @override
  State<OTPVerfication> createState() => _OTPVerficationState();
}

class _OTPVerficationState extends State<OTPVerfication> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -18,
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
                      text: otpVerification,
                      color: kpurple1,
                      size: 24,
                      weight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                    MyText(
                      text: enterOtpPrompt,
                      color: kgrey1,
                      size: 14,
                      weight: FontWeight.w500,
                      paddingBottom: 15,
                      textAlign: TextAlign.center,
                    ),
                    MyPinCode(
                      onChanged: (value) {},
                      onCompleted: (value) {
                        print("Completed: $value");
                      },
                    ),
                    //when invalid code then use this and make the pin colors to red as well
                    //           SizedBox(height: 10,),
                    //             Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //   Icon(Icons.info_outline,color: kred,size: 18,),
                    //     MyText(
                    //       text: 'Invalid Code',
                    //       color: kred,
                    //       size: 14,
                    //       weight: FontWeight.w400,
                    //       onTap: () {},
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: '00:38 ',
                    color: kgrey1,
                    size: 15,
                    weight: FontWeight.w400,
                  ),
                  MyText(
                    text: resendCode,
                    color: kpurple1,
                    size: 16,
                    weight: FontWeight.w700,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: () {
                  SuccessDialog.showSuccessDialog(
                      success, accountVerifiedPrompt);
                },
                buttonText: confirm,
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
