import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/MatchDetailContainer.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class MatchDetailAfterSearch extends StatefulWidget {
  const MatchDetailAfterSearch({super.key});

  @override
  State<MatchDetailAfterSearch> createState() => _MatchDetailAfterSearchState();
}

class _MatchDetailAfterSearchState extends State<MatchDetailAfterSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title: matchDetail,
          haveBackButton: true,
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  Assets.imagesShare,
                  width: 20,
                  height: 20,
                ))
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
                Matchdetailcontainer(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Mario Court',
                          size: 16,
                          weight: FontWeight.bold,
                          color: kpurple1,
                        ),
                        Image.asset(
                          Assets.imagesForwardicon,
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Rating and Reviews
                    Row(
                      children: [
                        Image.asset(
                          Assets.imagesStar,
                          width: 18,
                          height: 18,
                        ),
                        MyText(
                          text: '5.0 (25 reviews)',
                          size: 14,
                          color: kblack2,
                          paddingLeft: 5,
                        ),
                        Spacer(),
                        MyText(
                          text:direction,
                          size: 14,
                          weight: FontWeight.w400,
                          color: kgrey1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                MyText(
                  text: 'Main St. 2, Phase 3, Islamabad',
                  size: 14,
                  weight: FontWeight.w400,
                  color: kgrey1,
                ),
                MyText(
                  text: '2 km away',
                  size: 14,
                  weight: FontWeight.w400,
                  color: kgrey1,
                ),
                MyText(
                  paddingTop: 15,
                  text: description,
                  size: 14,
                  weight: FontWeight.w700,
                  color: kblack,
                ),
                MyText(
                  text: "x1 Ticket",
                  size: 14,
                  weight: FontWeight.w400,
                  color: kpurple1,
                  paddingBottom: 20,
                ),
                MyButton(
                  onTap: () {
                    SuccessDialog.ShowshareLinkdialog();
                    //Get.to(() => ReviewSummary());
                  },
                  buttonText: play,
                  mBottom: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
