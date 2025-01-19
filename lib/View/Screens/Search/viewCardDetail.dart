import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/ReviewsSection.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class ViewSearchCardDetail extends StatefulWidget {
  const ViewSearchCardDetail({super.key});

  @override
  State<ViewSearchCardDetail> createState() => _ViewSearchCardDetailState();
}

class _ViewSearchCardDetailState extends State<ViewSearchCardDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          haveBackButton: true, title:viewDetails, centerTitle: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
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
                SizedBox(
                  height: 15,
                ),
                MyText(
                  text:description,
                  size: 14,
                  weight: FontWeight.w700,
                  color: kblack,
                ),
                MyText(
                  text:
                      marioCourtDescription,
                  size: 14,
                  weight: FontWeight.w400,
                  color: kpurple1,
                  maxLines: 2,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 15,
                ),
                MyText(
                  text: gallery,
                  size: 14,
                  weight: FontWeight.w700,
                  color: kblack,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          margin: const EdgeInsets.only(right: 6),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CommonImageView(
                              url: dummyImage,
                            ),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    MyText(
                      text:reviews,
                      size: 14,
                      weight: FontWeight.w700,
                      color: kblack,
                      paddingRight: 5,
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ReviewsSection(),
                          SizedBox(
                            height: 15,
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
