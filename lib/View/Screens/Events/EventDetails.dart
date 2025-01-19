import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Events/Payments/PaymentMethod.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/ExpandedRow.dart';
import 'package:orland_sports/View/Widgets/ReviewImageStack.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class Eventdetails extends StatefulWidget {
  const Eventdetails({super.key});

  @override
  State<Eventdetails> createState() => _EventdetailsState();
}

class _EventdetailsState extends State<Eventdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: eventDetails,
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CommonImageView(
                    imagePath: Assets.imagesTournament,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ExpandedRow(
                  text1:tournament,
                  text2: '\$15',
                  weight1: FontWeight.bold,
                  weight2: FontWeight.bold,
                  size1: 20,
                  size2: 20,
                ),
                MyText(
                  text: 'Main St. 2, Phase 3, Islamabad',
                  size: 14,
                  weight: FontWeight.w400,
                  color: kgrey1,
                ),
                MyText(
                  paddingTop: 6,
                  text: '2 km away',
                  size: 14,
                  weight: FontWeight.w400,
                  color: kgrey1,
                  paddingBottom: 10,
                ),
                TwoTextedColumn(
                    text1:description,
                    text2:
                       marioCourtDescription),
                SizedBox(
                  height: 15,
                ),
                MyText(
                  paddingTop: 6,
                  text: participants,
                  size: 14,
                  weight: FontWeight.bold,
                  color: kblack2,
                  paddingBottom: 10,
                ),
                Row(
                  children: [
                    ReviewImagesStack(),
                    MyText(
                      paddingLeft: 10,
                      text: '+12 others',
                      size: 14,
                      weight: FontWeight.w400,
                      color: kgrey1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                MyText(
                  paddingTop: 6,
                  text: referee,
                  size: 14,
                  weight: FontWeight.bold,
                  color: kblack2,
                  paddingBottom: 10,
                ),
                Row(
                  children: [
                    ReviewImagesStack(),
                    MyText(
                      paddingLeft: 10,
                      text: '+2 others',
                      size: 14,
                      weight: FontWeight.w400,
                      color: kgrey1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TwoTextedColumn(
                  text1: startingFrom,
                  text2: '26/6/2023',
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {
                    Get.to(()=>PaymentMethod());
                  },
                  buttonText: joinEvent,
                  mBottom: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
