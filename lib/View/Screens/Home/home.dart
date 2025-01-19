import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Events/EventDetails.dart';
import 'package:orland_sports/View/Screens/Events/NearbyEvents.dart';
import 'package:orland_sports/View/Screens/matchmaking/PlayNow.dart';
import 'package:orland_sports/View/Widgets/ButtonContainer.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

import '../../Widgets/HomeContainers.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                HomeAppbarWidget(),
                SizedBox(
                  height: 10,
                ),
                HomeContainer(),
                SizedBox(
                  height: 15,
                ),
                buttonContainer(
                  text: '3 Courts around you detected',
                  icon: Icons.location_on_outlined,
                  iconColor: kred,
                  bgColor: kred.withOpacity(0.05),
                  radius: 10,
                  iscenter: false,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buttonContainer(
                      text: 'Play Now',
                      txtColor: kwhite,
                      textsize: 14,
                      bgColor: kteal,
                      radius: 10,
                      vPadding: 8,
                      hPadding: 15,
                      onTap: () {
                        Get.to(()=>PlayNow());
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // height: 188,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: kgrey2),
                  child: Column(
                    children: [
                      HomeContainer(),
                      SizedBox(
                        height: 10,
                      ),
                      MyText(
                        text:
                            'Gather your companions & form your official team',
                        color: kblack2,
                        weight: FontWeight.w600,
                        size: 14,
                        paddingBottom: 10,
                        paddingLeft: 8,
                        paddingRight: 8,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                buttonContainer(
                  text: 'Invite your friends to a match',
                  imagePath: Assets.imagesAdduser,
                  imageSize: 20,
                  bgColor: kpurple1.withOpacity(0.05),
                  radius: 10,
                  iscenter: false,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buttonContainer(
                      text: 'Invite',
                      txtColor: kwhite,
                      textsize: 14,
                      bgColor: kpurple1,
                      radius: 10,
                      vPadding: 8,
                      hPadding: 15,
                      onTap: () {
                        Get.to(() =>NearbyEvents() );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CommonImageView(
                      imagePath: Assets.imagesGold,
                      width: 86,
                      height: 86,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Final Accumulated Prize \$1500',
                          color: kblack2,
                          weight: FontWeight.w600,
                          size: 14,
                          paddingBottom: 8,
                        ),
                        SizedBox(
                          width:220,
                          child: Container(
                            decoration: BoxDecoration(
                              color: kwhite,
                              border: Border.all(
                                color: kpurple1,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: LinearProgressIndicator(
                                minHeight: 10,
                                backgroundColor: kwhite,
                                color: kpurple1,
                                value: 0.3,
                              ),
                            ),
                          ),
                        ),
                        MyText(
                          paddingTop: 8,
                          text: 'Win Great Invitation To The Final',
                          color: kblack2,
                          weight: FontWeight.w600,
                          size: 14,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
