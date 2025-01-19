import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Auth/Login/LoginScreen.dart';
import 'package:orland_sports/View/Screens/IndentityVerification/VerifyIdentity.dart';
import 'package:orland_sports/View/Screens/matchmaking/ReviewSummary.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class SuccessDialog {
  static void showSuccessDialog(String title, String message,
      {String? ButtonText,
      VoidCallback? ontap,
      String? image,
      Color? titleColor}) {
    Get.dialog(
      AlertDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 30.0),
        contentPadding: EdgeInsets.only(bottom: 30, left: 5, right: 5),
        backgroundColor: kwhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Column(
          children: [
            Image.asset(
              image ?? Assets.imagesSuccess,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
          ],
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(
                text: title,
                color: titleColor ?? kpurple1,
                size: 20,
                weight: FontWeight.bold,
                paddingTop: 5,
              ),
              MyText(
                text: message,
                color: kgrey1,
                size: 14,
                weight: FontWeight.w400,
                paddingBottom: 20,
                textAlign: TextAlign.center,
              ),
              MyButton(
                onTap: ontap??(){Get.bottomSheet(VerifyIdentity(),
                          isScrollControlled: true);},
                buttonText: ButtonText ?? continuee,
                fontSize: 14,
                radius: 15,
              )
            ],
          ),
        ),
      ),
    );
  }

  static void ShowshareLinkdialog() {
    Get.dialog(
      AlertDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 30.0),
        contentPadding: EdgeInsets.only(bottom: 30, left: 5, right: 5),
        backgroundColor: kwhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Column(
          children: [
            Image.asset(
              Assets.imagesLink,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
          ],
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(
                text: invitationLink,
                color: kpurple1,
                size: 20,
                weight: FontWeight.bold,
                paddingTop: 5,
              ),
              MyText(
                text:
                    invitationLinkDescription,
                color: kgrey1,
                size: 14,
                weight: FontWeight.w400,
                paddingBottom: 20,
                textAlign: TextAlign.center,
              ),
              MyTextField(
                hint: 'https://invitelink/playerA?/1bcf4r',
                filledColor: kgrey2,
                suffixIcon: Icon(Icons.copy,color: kgrey1.withOpacity(0.4),size: 18,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () { Get.to(() =>ReviewSummary() );},
                    child: CommonImageView(
                      imagePath: Assets.imagesMail,
                      width: 54,
                      height: 54,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CommonImageView(
                      imagePath: Assets.imagesFacebook2,
                      width: 54,
                      height: 54,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CommonImageView(
                      imagePath: Assets.imagesInsta,
                      width: 54,
                      height: 54,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CommonImageView(
                      imagePath: Assets.imagesWhatsapp,
                      width: 54,
                      height: 54,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
