import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/main.dart';

class RankingCategory extends StatefulWidget {
  const RankingCategory({super.key});

  @override
  State<RankingCategory> createState() => _RankingCategoryState();
}

class _RankingCategoryState extends State<RankingCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      RankingCategoryCard(),
                      SizedBox(
                        height: 18,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class RankingCategoryCard extends StatelessWidget {
  final String? title;
  final String? investment;
  final String? rankno;
  final String? img;
  const RankingCategoryCard({
    super.key,
    this.title,
    this.investment,
    this.rankno,
    this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CommonImageView(
              width: 53,
              height: 53,
              url: img ?? dummyImage,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: title ?? 'TOPGOLEAR',
                color: kblack2,
                size: 14,
                weight: FontWeight.bold,
              ),
              MyText(
                text: '${totalinvestement} : ${investment ?? 172}',
                color: kgrey1,
                size: 14,
                weight: FontWeight.w600,
              ),
              MyText(
                text: '${lastmonthrank} : ${rankno ?? 2}',
                color: kgrey1,
                size: 14,
                weight: FontWeight.w600,
              ),
            ],
          )
        ],
      ),
    );
  }
}
