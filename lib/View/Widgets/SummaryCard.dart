import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/ExpandedRow.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class summaryCard extends StatelessWidget {
  final String? matchType;
  final String? text1;
  final String? text2;
  final String? court;
  final String? total;
  final bool? paymentDone;
  final String? amount;
  final bool? isOrder;
  final String? tax;
  const summaryCard({
    super.key,
    this.matchType,
    this.court,
    this.total,
    this.paymentDone = false,
    this.amount,
    this.tax,
    this.text1,
    this.text2,
    this.isOrder=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kwhite,
          border: Border.all(color: kgrey2)),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Column(
        children: [
          ExpandedRow(
            text1: text1 ?? matchtype,
            text2: matchType ?? 'Friendly',
            size1: 16,
            size2: 16,
          ),
          SizedBox(
            height: 20,
          ),
          ExpandedRow(
              text1: text2 ?? courtt,
              text2: court ?? 'Mario Court',
              size1: 16,
              size2: 16),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: kgrey2,
          ),
          SizedBox(
            height: 10,
          ),
          if (paymentDone == true) ...{
            ExpandedRow(
              text1: Amountt,
              text2: amount ?? '\$15',
              size1: 16,
              size2: 16,
            ),
            SizedBox(
              height: 20,
            ),
            ExpandedRow(
                text1: taxx, text2: court ?? '\$2', size1: 16, size2: 16),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: kgrey2,
            ),
            SizedBox(
              height: 10,
            ),
          },
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text:totall,
                color: kblack2,
                weight: FontWeight.bold,
                size: 16,
              ),
              if(isOrder==false)
              Row(
                children: [
                  Image.asset(
                    Assets.imagesTicket,
                    width: 22,
                    height: 22,
                  ),
                  MyText(
                    text: total ?? 'x1',
                    color: kpurple1,
                    weight: FontWeight.bold,
                    size: 16,
                    paddingLeft: 6,
                  ),
                ],
              ),
              if(isOrder==true)
                   MyText(
                    text: total ?? '\$202',
                    color: kpurple1,
                    weight: FontWeight.bold,
                    size: 16,
                    paddingLeft: 6,
                  ),
            ],
          )
        ],
      ),
    );
  }
}
