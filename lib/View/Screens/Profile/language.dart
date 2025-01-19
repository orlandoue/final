import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/Checkbox.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';

class LanguageProfile extends StatefulWidget {
  const LanguageProfile({super.key});

  @override
  State<LanguageProfile> createState() => _LanguageProfileState();
}

class _LanguageProfileState extends State<LanguageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title: 'Languages', centerTitle: false, haveBackButton: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                  text: 'Select Language',
                  color: kblack,
                  weight: FontWeight.w500,
                  size: 18,
                  paddingBottom: 10,
                ),
                Card(
                  color: kwhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    child: Column(
                      children: [
                        Select_language_container(
                          language: 'English',
                          ontap: () {},
                          activecolor: kpurple1,
                        ),
                        Divider(
                          color: kgrey1.withOpacity(0.2),
                        ),
                        Select_language_container(
                          language: 'Spanish',
                          ontap: () {},
                          isactive: false,
                          activecolor: kpurple1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: MyButton(
          onTap: () {
            //Get.to(EnableLocation());
          },
          buttonText: 'Update',
        ),
      ),
    );
  }
}

class Select_language_container extends StatelessWidget {
  final String language;
  final VoidCallback ontap;
  final bool? isactive;
  final Color? activecolor, inactiveColor;
  const Select_language_container(
      {super.key,
      required this.language,
      required this.ontap,
      this.isactive = true,
      this.activecolor,
      this.inactiveColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: kwhite),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: language, //'English',
              color: kgrey1,
              size: 16,
              weight: FontWeight.w500,
              paddingLeft: 6,
            ),
            CustomCheckBox(
              isActive: isactive ?? true,
              onTap: ontap,
              iscircle: true,
              unSelectedColor: inactiveColor,
              selectedColor: activecolor,
            )
          ],
        ),
      ),
    );
  }
}
