import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/SummaryCard.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';

class Revieweventsummary extends StatefulWidget {
  const Revieweventsummary({super.key});

  @override
  State<Revieweventsummary> createState() => _RevieweventsummaryState();
}

class _RevieweventsummaryState extends State<Revieweventsummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: reviewSummary,
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
                SizedBox(
                  height: 20,
                ),
                summaryCard(
                  paymentDone: true,
                )
              ],
            ),
          ),
          MyButton(
            onTap: () {
              SuccessDialog.showSuccessDialog(
                 success, paymentSuccess);
            },
            buttonText:confirmPayment,
            mhoriz: 20,
            mBottom: 40,
          )
        ],
      ),
    );
  }
}
