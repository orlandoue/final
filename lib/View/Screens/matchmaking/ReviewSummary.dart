import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/matchmaking/Directions.dart';
import 'package:orland_sports/View/Widgets/ExpandedRow.dart';
import 'package:orland_sports/View/Widgets/SummaryCard.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class ReviewSummary extends StatefulWidget {
  const ReviewSummary({super.key});

  @override
  State<ReviewSummary> createState() => _ReviewSummaryState();
}

class _ReviewSummaryState extends State<ReviewSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title: reviewSummary,
          haveBackButton: true,
          centerTitle: false,
          actions: [
            ticketcount(),
            SizedBox(
              width: 13,
            )
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 20,
                ),
                summaryCard()
              ],
            ),
          ),
          MyButton(
            onTap: () {
              Get.to(() => Directions());
            },
            buttonText: confirm,
            mhoriz: 20,
            mBottom: 40,
          )
        ],
      ),
    );
  }
}
