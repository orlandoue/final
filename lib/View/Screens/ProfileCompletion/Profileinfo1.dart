import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/BottomNavbar.dart';
import 'package:orland_sports/View/Widgets/ButtonContainer.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/MyDropDown.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class ProfileInfo1 extends StatefulWidget {
  const ProfileInfo1({super.key});

  @override
  State<ProfileInfo1> createState() => _ProfileInfo1State();
}

class _ProfileInfo1State extends State<ProfileInfo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar2(
          haveBackButton: true, title: profileInfo, centerTitle: false),
      backgroundColor: kwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kgrey2,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              Assets.imagesAddphoto,
                              width: 19,
                              height: 17,
                            ),
                            MyText(
                              text: upload,
                              size: 12,
                              color: kgrey1,
                              paddingTop: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buttonContainer(
                      text: replace,
                      vPadding: 7,
                      hPadding: 12,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buttonContainer(
                      text: remove,
                      txtColor: kgrey1,
                      bgColor: kwhite,
                      borderColor: kgrey2,
                      vPadding: 7,
                      hPadding: 12,
                      onTap: () {},
                    ),
                  ],
                ),
                MyText(
                  text: personalInformation,
                  size: 15,
                  color: kblack2,
                  paddingTop: 12,
                  weight: FontWeight.bold,
                ),
                CustomDropDown(
                  hint: country,
                  items: [country, 'Pakistan'],
                  selectedValue: country,
                  onChanged: (c) {},
                  mBottom: 20,
                ),
                MyTextField(
                  hint: dateOfBirth,
                  marginBottom: 0,
                ),
                CustomDropDown(
                    hint: gender,
                    items: [gender, 'Male', 'Female'],
                    selectedValue: gender,
                    onChanged: (c) {}),
                MyText(
                  text: skillsAndMoreInfo,
                  size: 15,
                  color: kblack2,
                  paddingTop: 12,
                  weight: FontWeight.bold,
                ),
                CustomDropDown(
                    hint: skillLevel,
                    items: [
                      'Beginner',
                      'Intermediate',
                    ],
                    selectedValue: 'Beginner',
                    mBottom: 0,
                    onChanged: (c) {}),
                CustomDropDown(
                    hint: favoritePosition,
                    items: [favoritePosition, 'Male', 'Female'],
                    selectedValue: favoritePosition,
                    onChanged: (c) {}),
              ],
            ),
          ),
          MyButton(
            onTap: () {
              SuccessDialog.showSuccessDialog(ontap: () {
                Get.to(() => BottomNavBar());
              }, profileSetupComplete, profileUpdatedMessage);
            },
            buttonText: upload,
            mhoriz: 20,
            mBottom: 50,
          )
        ],
      ),
    );
  }
}
