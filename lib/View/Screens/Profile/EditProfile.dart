import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/MyDropDown.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/appColors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'Edit Profile',
        haveBackButton: true,
        centerTitle: false,
      ),
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
                  text: 'Personal Information',
                  color: kblack2,
                  size: 14,
                  weight: FontWeight.bold,
                  paddingBottom: 15,
                ),
                MyTextField(
                  hint: 'Phone Number',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: 'Email Address',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyText(
                  paddingTop: 15,
                  text: 'More Info',
                  color: kblack2,
                  size: 14,
                  weight: FontWeight.bold,
                  paddingBottom: 15,
                ),
                MyTextField(
                  hint: 'Country',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: 'Date of Birth',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: 'Gender',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyText(
                  paddingTop: 15,
                  text: 'Skills',
                  color: kblack2,
                  size: 14,
                  weight: FontWeight.bold,
                ),
                CustomDropDown(
                    hint: 'Beginner, Intermediate, Professional',
                    items: [
                      'Beginner',
                      'Intermediate',
                    ],
                    selectedValue: 'Beginner',
                    mBottom: 0,
                    onChanged: (c) {}),
                CustomDropDown(
                    hint: 'Favorite Position',
                    items: ['Favorite Position', 'Male', 'Female'],
                    selectedValue: 'Favorite Position',
                    onChanged: (c) {}),

                    SizedBox(height: 15,),

                    MyButton(onTap: (){},
                    buttonText: 'Update',
                    mBottom: 100,
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
