import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/ProgressIndicator.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class RankingCard extends StatelessWidget {
  const RankingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          color: kpurple1),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(
        children: [
          MyText(
            text: rankingseason,
            size: 24,
            weight: FontWeight.bold,
            color: kwhite,
            paddingBottom: 5,
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
                    text: '${finalPrize} \$1500',
                    color: kwhite,
                    weight: FontWeight.w600,
                    size: 14,
                    paddingBottom: 8,
                  ),
                  myLinearProgressIndicator(
                    fillColor: kpurple1,
                    valueColor: kwhite,
                    border: kwhite,
                  ),
                  MyText(
                    paddingTop: 8,
                    text: winGreatInvitation,
                    color: kwhite,
                    weight: FontWeight.w600,
                    size: 14,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kblack.withOpacity(0.25)),
            padding: EdgeInsets.all(8),
            child: MyText(
              text:
                  participateToFinal,
              color: kwhite,
              size: 14,
              weight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
