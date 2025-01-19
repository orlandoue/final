import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/appColors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'Security',
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
                MyTextField(
                  hint: 'Current Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: kgrey1.withOpacity(0.5),
                  ),
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: 'Create new password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: kgrey1.withOpacity(0.5),
                  ),
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: 'Re-type password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: kgrey1.withOpacity(0.5),
                  ),
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
              ],
            ),
          ),
          MyButton(
            onTap: () {},
            buttonText: 'Update Password',
            mBottom: 60,
            mhoriz: 20,
          )
        ],
      ),
    );
  }
}
