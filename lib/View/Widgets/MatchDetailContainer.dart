import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class Matchdetailcontainer extends StatelessWidget {
  const Matchdetailcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kpurple1),
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: 55,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(dummyImage), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              MyText(
                text: you,
                color: kwhite,
                paddingTop: 4,
                size: 14,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Image.asset(
                Assets.imagesQuickplay,
                width: 150,
                height: 150,
                color: kgrey2,
              ),
              Positioned(
                  top: 40,
                  left: 35,
                  child: Column(
                    children: [
                      MyText(
                        text: 'In 2hr 30min',
                        color: kwhite,
                        size: 15,
                        weight: FontWeight.w500,
                      ),
                      SizedBox(height: 10,),
                      MyText(
                        text: vs,
                        color: kwhite,
                        paddingTop: 4,
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(height: 10,),
                      MyText(
                        text: 'In 2hr 30min',
                        color: kwhite,
                        size: 15,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                width: 55,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(dummyImage), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              MyText(
                text: 'Player B',
                color: kwhite,
                paddingTop: 4,
                size: 14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
