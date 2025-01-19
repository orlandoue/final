import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Search/addFiltersBottomsheet.dart';
import 'package:orland_sports/View/Screens/matchmaking/MatchDetails.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class PlayNow extends StatefulWidget {
  const PlayNow({super.key});

  @override
  State<PlayNow> createState() => _PlayNowState();
}

class _PlayNowState extends State<PlayNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title:playNow,
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
                PlaynowCards(
                  text1: quickPlay,
                  text2: matchesAvailable,
                  image: Assets.imagesQuickplay,
                  ontap: () {
                    Get.bottomSheet(
                        AddFilters(
                          heading: datetime,
                          ontap: () {
                            Get.to(() => MatchDetails());
                          },
                        ),
                        isScrollControlled: true);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                PlaynowCards(
                  text1: competitiveMatch,
                  text2: matchesAvailable,
                  image: Assets.imagesTrophy,
                  bgColor: kpurple4,
                  ontap: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                PlaynowCards(
                  bgColor: kpink,
                  text1: manageMatch,
                  text2: '2 matches ',
                  image: Assets.imagesUser,
                  ontap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlaynowCards extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;
  final VoidCallback ontap;
  final Color? bgColor;
  const PlaynowCards({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
    required this.ontap,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: bgColor ?? kpurple3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: text1,
                  size: 19,
                  color: kblack2,
                  weight: FontWeight.bold,
                  paddingBottom: 4,
                ),
                MyText(
                  text: text2,
                  size: 16,
                  color: kblack2,
                  weight: FontWeight.w500,
                  paddingBottom: 6,
                ),
                CommonImageView(
                  imagePath: Assets.imagesArrowUpRight,
                  width: 20,
                  height: 20,
                ),
                SizedBox(height: 10)
              ],
            ),
            Image.asset(
              image,
              width: 62,
              height: 62,
            )
          ],
        ),
      ),
    );
  }
}
