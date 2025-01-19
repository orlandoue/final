import 'package:flutter/material.dart';
import 'package:orland_sports/View/Screens/Profile/Security.dart';

import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/const/appColors.dart';

class Notifictaionss extends StatefulWidget {
  const Notifictaionss({super.key});

  @override
  State<Notifictaionss> createState() => _NotifictaionssState();
}

class _NotifictaionssState extends State<Notifictaionss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'Notifications',
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
                  textt: 'General Notifications',
                ),
                SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Events',
                   isActive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Matches',
                   isActive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Offers',
                   isActive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'News',
                   isActive: true,
                ),
                   SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Payment',
                   isActive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Vibrate',
                ),
                 SizedBox(
                  height: 10,
                ),
                SwitchRow(
                  textt: 'Others',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
