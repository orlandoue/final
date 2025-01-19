import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/main.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(dummyImage), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding:
                EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            decoration: BoxDecoration(
                color: kpurple2,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10))),
            child: MyText(
              text: sportsTeam,
              color: kwhite,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
