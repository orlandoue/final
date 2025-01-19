import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';
import 'package:orland_sports/main.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title: 'Notifications',
          haveBackButton: true,
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: kblack2,
                ))
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                NotificationsCard(
                    'Blitz', ' you achieved gold rank.', '1 hr', dummyImage,
                    hassecTime: true),
                MyText(
                  text: 'Recent Acitivity',
                  size: 14,
                  weight: FontWeight.w700,
                  color: kblack,
                  paddingBottom: 10,
                  paddingTop: 20,
                ),
                SizedBox(
                  height: 12,
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          NotificationsCard('Blitz', ' you achieved gold rank.',
                              '1 hr', dummyImage,
                              hassecTime: true),
                          SizedBox(
                            height: 20,
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

Widget NotificationsCard(
  String name,
  String notificationText,
  String time,
  String img, {
  bool? hassecTime = false,
}) {
  return Row(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(img),
      ),
      SizedBox(width: 6),

      // Conditional rendering based on `hassecTime`
      if (hassecTime == false)
        Flexible(
          child: RichText(
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    color: kblack,
                    fontSize: 16,
                    fontFamily: AppFonts.boston,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                TextSpan(
                  text: notificationText,
                  style: TextStyle(
                    color: kgrey1,
                    fontSize: 16,
                    fontFamily: AppFonts.boston,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),

      if (hassecTime == true)
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                        color: kblack,
                        fontSize: 16,
                        fontFamily: AppFonts.boston,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextSpan(
                      text: notificationText,
                      style: TextStyle(
                        color: kblack2,
                        fontSize: 16,
                        fontFamily: AppFonts.boston,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              MyText(
                text: '2 hours',
                size: 14,
                color: kblack2,
              ),
            ],
          ),
        ),

      Spacer(),

      MyText(
        text: time,
        size: 14,
        color: kgrey1,
        weight: FontWeight.w600,
      ),
    ],
  );
}
