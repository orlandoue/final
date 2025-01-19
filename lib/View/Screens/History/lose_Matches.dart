import 'package:flutter/material.dart';
import 'package:orland_sports/View/Screens/matchmaking/ManageMatch.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';

class LoseMatches extends StatefulWidget {
  const LoseMatches({super.key});

  @override
  State<LoseMatches> createState() => _LoseMatchesState();
}

class _LoseMatchesState extends State<LoseMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'Lose Matches',
        haveBackButton: true,
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
                  text: 'Recent Matches',
                  color: kblack,
                  size: 14,
                  weight: FontWeight.bold,
                  paddingBottom: 12,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          manageMatchcard(
                            textColor: kpurple1,
                            statusColor: kred,
                            bgColor: kwhite,
                            border: kgrey2,
                            Statustext: 'You Lose',
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
