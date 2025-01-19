import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Profile/ChangePassword.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'Security',
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
                SwitchRow(
                  textt: 'Face ID',
                  isActive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Biometric ID',
                ),
                SizedBox(
                  height: 50,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => ChangePassword());
                  },
                  buttonText: 'Change Password',
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

class SwitchRow extends StatelessWidget {
  final String textt;
  final bool? isActive;
  const SwitchRow({
    super.key,
    required this.textt,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: textt,
          size: 16,
          color: kblack,
          weight: FontWeight.w500,
        ),
        Transform.scale(
          scale: 0.9,
          child: Switch(
            value: isActive ?? false,
            onChanged: (w) {},
            inactiveTrackColor: kgrey1.withOpacity(0.3),
            trackOutlineColor: WidgetStateColor.transparent,
            inactiveThumbColor: kwhite,
            activeTrackColor: kpurple1,
          ),
        ),
      ],
    );
  }
}
