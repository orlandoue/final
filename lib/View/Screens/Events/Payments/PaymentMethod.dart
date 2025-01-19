import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Events/Payments/AddMethod.dart';
import 'package:orland_sports/View/Screens/Events/RevieweventSummary.dart';
import 'package:orland_sports/View/Widgets/Checkbox.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: selectPaymentMethod,
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
                PaymentmethodCard(
                  methodName: 'Paypal',
                  icon: Assets.imagesPaypal,
                ),
                SizedBox(
                  height: 20,
                ),
                PaymentmethodCard(
                  methodName: 'Google Pay',
                  icon: Assets.imagesGoogle,
                  isActive: true,
                ),
                SizedBox(
                  height: 20,
                ),
                PaymentmethodCard(
                  methodName: 'Apple Pay',
                  icon: Assets.imagesApple,
                ),
                SizedBox(
                  height: 30,
                ),
                MyButton(
                  onTap: () {
                    Get.to(()=>AddPaymentMethod());
                  },
                  buttonText: addCard,
                  outlineColor: kpurple1,
                  fillColor: kwhite,
                  fontColor: kpurple1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentmethodCard extends StatelessWidget {
  final String methodName;
  final String icon;
  final bool? isActive;
  const PaymentmethodCard({
    super.key,
    required this.methodName,
    required this.icon,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>Revieweventsummary());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: kgrey2),
        child: Row(
          children: [
            CommonImageView(
              imagePath: icon,
              width: 32,
              height: 32,
            ),
            MyText(
              text: methodName,
              size: 16,
              weight: FontWeight.w600,
              color: kblack,
              paddingLeft: 8,
            ),
            Spacer(),
            CustomCheckBox(
              isActive: isActive ?? false,
              onTap: () {},
              iscircle: true,
            )
          ],
        ),
      ),
    );
  }
}
