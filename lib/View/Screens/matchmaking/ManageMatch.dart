import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/matchmaking/cancelMatch.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/main.dart';

class ManageMatch extends StatefulWidget {
  const ManageMatch({super.key});

  @override
  State<ManageMatch> createState() => _ManageMatchState();
}

class _ManageMatchState extends State<ManageMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title:manageMatch,
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
              children: [manageMatchcard()],
            ),
          ),
        ],
      ),
    );
  }
}

class manageMatchcard extends StatelessWidget {
  final Color? bgColor;
  final Color? textColor;
    final Color? statusColor;
  final Color? border;
  final String? Statustext;
  final String? dateortime1;
  final String? dateortime2;
  const manageMatchcard({
    super.key,
    this.bgColor,
    this.textColor,
    this.border,
    this.Statustext,
    this.dateortime1,
    this.dateortime2, this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => CancelMatch());
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: border ?? ktransparent),
            color: bgColor ?? kpurple1,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(dummyImage), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                MyText(
                  text: you,
                  color: textColor ?? kwhite,
                  paddingTop: 4,
                  size: 14,
                )
              ],
            ),
            Column(
              children: [
                MyText(
                  text:dateortime1??'In 2hr 30min',
                  color: textColor ?? kwhite,
                  size: 15,
                  weight: FontWeight.w500,
                ),
                SizedBox(
                  height: 10,
                ),
                MyText(
                  text: Statustext ?? vs,
                  color: statusColor ?? kwhite,
                  paddingTop: 4,
                  size: 18,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 10,
                ),
                MyText(
                  text:dateortime2?? 'Mario Court',
                  color: textColor ?? kwhite,
                  size: 15,
                  weight: FontWeight.w500,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(dummyImage), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                MyText(
                  text: 'Player B',
                  color: textColor ?? kwhite,
                  paddingTop: 4,
                  size: 14,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
