import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: kwhite,
           appBar: simpleAppBar2(
        title: 'Privacy Policy',
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
                    paddingBottom: 10,
                    weight: FontWeight.bold,
                    size: 16,
                    color: kblack2,
                    text: 'Introduction'),
                MyText(
                    weight: FontWeight.w400,
                    color: kgrey1,
                    textAlign: TextAlign.justify,
                    size:14,
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                MyText(
                    paddingTop: 20,
                    paddingBottom: 10,
                    weight: FontWeight.bold,
                    size: 16,
                    textAlign: TextAlign.justify,
                    color: kblack2,
                    text: 'Information We Collect'),
                MyText(
                    textAlign: TextAlign.justify,
                    weight: FontWeight.w400,
                    color: kgrey1,
                    paddingBottom: 10,
                    size:14,
                    text:
                        "Vestibulum tincidunt purus in ultrices ultricies. Aliquam eu arcu id ligula interdum facilisis. Sed sed vestibulum felis. Phasellus eleifend feugiat felis, ut feugiat odio fringilla vel. Suspendisse potenti. Morbi ullamcorper, velit sit amet viverra malesuada, tortor sapien mattis nulla, in cursus sem turpis in dolor."),
                MyText(
                    paddingTop: 20,
                    paddingBottom: 10,
                    weight: FontWeight.bold,
                    size: 16,
                    textAlign: TextAlign.justify,
                    color: kblack2,
                    text: 'How We Use Your Information'),
                MyText(
                  color: kgrey1,
                  text:
                      'Vestibulum tincidunt purus in ultrices ultricies. Aliquam eu arcu id ligula interdum facilisis. Sed sed vestibulum felis. Phasellus eleifend feugiat felis, ut feugiat odio fringilla vel.',
                  size:14,
                  weight: FontWeight.w400,
                ),
                MyText(
                    paddingTop: 20,
                    paddingBottom: 10,
                    weight: FontWeight.bold,
                    size: 16,
                    textAlign: TextAlign.justify,
                    color: kblack2,
                    text: 'Information Sharing'),
                MyText(
                  color: kgrey1,
                  text:
                      'Vestibulum tincidunt purus in ultrices ultricies. Aliquam eu arcu id ligula interdum facilisis. Sed sed vestibulum felis. Phasellus eleifend feugiat felis, ut feugiat odio fringilla vel.',
                  size:14,
                  weight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
