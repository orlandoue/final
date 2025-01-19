import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Store/Payments/PaymentMethod.dart';
import 'package:orland_sports/View/Screens/matchmaking/Directions.dart';
import 'package:orland_sports/View/Screens/matchmaking/ReviewSummary.dart';
import 'package:orland_sports/View/Widgets/ExpandedRow.dart';
import 'package:orland_sports/View/Widgets/SummaryCard.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title:orderSummary,
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
                SizedBox(height: 20,),
                summaryCard(
                  text1: 'Name',
                  text2: 'Qty',
                  paymentDone: true,
                  isOrder: true,
                )
              ],
            ),
          ),
          MyButton(onTap: (){
            Get.to(()=>Store_PaymentMethod());
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

