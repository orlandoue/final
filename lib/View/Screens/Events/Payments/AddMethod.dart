import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';

class AddPaymentMethod extends StatefulWidget {
  const AddPaymentMethod({super.key});

  @override
  State<AddPaymentMethod> createState() => _AddPaymentMethodState();
}

class _AddPaymentMethodState extends State<AddPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: addCardDetails,
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
                MyTextField(
                  hint: cardHolderName,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint:cardNumber,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
                MyTextField(
                  hint: expiryDate,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                  suffixIcon: Icon(
                    Icons.calendar_today_outlined,
                    color: kpurple1,
                    size: 18,
                  ),
                ),
                MyTextField(
                  hint: cvvCode,
                  focusedFilledColor: kpurple1.withOpacity(0.05),
                ),
              ],
            ),
          ),
          MyButton(
            onTap: () {
              SuccessDialog.showSuccessDialog(
                 success,paymentSuccess,
                  ontap: () {});
            },
            buttonText:confirm,
            mhoriz: 20,
            mBottom: 60,
          )
        ],
      ),
    );
  }
}
