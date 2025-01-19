
import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/appColors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                       MyTextField(
                  hint: 'Full Name',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                  MyTextField(
                  hint: 'Email Address',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                 MyTextField(
                  hint: 'Phone Number',
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
              
                  MyTextField(
                  hint: 'Description',
                  maxLines: 5,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
              ],
            ),
          ),
                MyButton(
            onTap: () {},
            buttonText: 'Send',
            mBottom: 60,
            mhoriz: 20,
          )
        ],
      ),
    );
  }
}