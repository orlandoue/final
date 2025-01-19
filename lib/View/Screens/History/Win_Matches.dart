import 'package:flutter/material.dart';
import 'package:orland_sports/View/Screens/matchmaking/ManageMatch.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';

class WinMatches extends StatefulWidget {
  const WinMatches({super.key});

  @override
  State<WinMatches> createState() => _WinMatchesState();
}

class _WinMatchesState extends State<WinMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: wonMatches,
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
                  text: recentMatches,
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
                            bgColor: kwhite,
                            border: kgrey2,
                            statusColor: kpurple1,
                            Statustext: youWon,
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
