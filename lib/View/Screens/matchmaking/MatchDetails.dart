import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/matchmaking/MatchDetailSearch.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/MatchDetailContainer.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class MatchDetails extends StatefulWidget {
  const MatchDetails({super.key});

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}

class _MatchDetailsState extends State<MatchDetails> {
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
                Container(
                  height: 114,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(colors: [kgrey3, kgrey4])),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(colors: [kgrey3, kgrey4])),
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: () {
                    Get.to(()=>MatchDetailAfterSearch());
                  },
                  buttonText: searchingForMatch,
                  fillColor: kwhite,
                  outlineColor: kpurple1,
                  fontColor: kpurple1,
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
