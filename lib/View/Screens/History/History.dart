import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:orland_sports/View/Screens/History/Ranking.dart';
import 'package:orland_sports/View/Screens/History/Win_Matches.dart';
import 'package:orland_sports/View/Screens/History/lose_Matches.dart';
import 'package:orland_sports/View/Screens/matchmaking/ManageMatch.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/ExpandedRow.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'History',
        haveBackButton: false,
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
                  text: myRank,
                  weight: FontWeight.bold,
                  size: 20,
                  color: kblack2,
                  paddingBottom: 15,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Ranking());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: kgrey2),
                            borderRadius: BorderRadius.circular(10),
                            color: kwhite),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Column(
                          children: [
                            CommonImageView(
                              imagePath: Assets.imagesDiamond,
                              width: 72,
                              height: 72,
                            ),
                            MyText(
                              text: 'Diamond',
                              weight: FontWeight.bold,
                              size: 16,
                              color: kblack2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpandedRow(
                  text1: seasonRankings,
                  text2: view,
                  color2: kpurple1,
                  weight1: FontWeight.bold,
                  size1: 20,
                  size2: 14,
                  weight2: FontWeight.bold,
                ),
                MyText(
                  paddingTop: 20,
                  text:myPoints,
                  weight: FontWeight.bold,
                  size: 20,
                  color: kblack2,
                  paddingBottom: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HistoryColoredCards(
                      title: myPoints,
                      subTitle: '240',
                      bgColor: kpurple4,
                      ontap: () {
                        Get.to(() => WinMatches());
                      },
                    ),
                    HistoryColoredCards(
                      title: totalMatches,
                      subTitle: '240',
                      bgColor: kpurple3,
                      ontap: () {
                        Get.to(() => WinMatches());
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HistoryColoredCards(
                      title: win,
                      subTitle: '240',
                      bgColor: kblue,
                      ontap: () {
                        Get.to(() => WinMatches());
                      },
                    ),
                    HistoryColoredCards(
                      title: lose,
                      subTitle: '240',
                      bgColor: kpink,
                      ontap: () {
                        Get.to(() => LoseMatches());
                      },
                    ),
                  ],
                ),
                MyText(
                  paddingTop: 20,
                  text: recentMatches,
                  weight: FontWeight.bold,
                  size: 14,
                  color: kblack2,
                  paddingBottom: 15,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          manageMatchcard(
                            textColor: kpurple1,
                            bgColor: kwhite,
                            border: kgrey2,
                            Statustext: youWon,
                            statusColor: kpurple1,
                            dateortime1: '26/6/2024',
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryColoredCards extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String subTitle;
  final VoidCallback ontap;
  const HistoryColoredCards({
    super.key,
    required this.bgColor,
    required this.title,
    required this.subTitle,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 155,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: bgColor),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: title,
              weight: FontWeight.bold,
              size: 16,
              color: kblack2,
            ),
            MyText(
              text: subTitle,
              weight: FontWeight.w500,
              size: 16,
              color: kgrey1,
            ),
          ],
        ),
      ),
    );
  }
}
