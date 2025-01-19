import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class CancelMatchBottomSheet extends StatelessWidget {
  const CancelMatchBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.4,
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
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
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
                  text:areYouSure,
                  color: kpurple1,
                  size: 24,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                MyText(
                  text:
                      cancelOrderPrompt,
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.w500,
                  paddingBottom: 15,
                  textAlign: TextAlign.center,
                ),
                MyTextField(
                  hint: search,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                          onTap: () {
              SuccessDialog.showSuccessDialog(
                  matchCancelled, matchCancelledMessage,image:Assets.imagesCancel,titleColor: kred );
            },
                        buttonText: yes,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: MyButton(
                        onTap: () {},
                        buttonText: no,
                      ),
                    ),
                  ],
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
