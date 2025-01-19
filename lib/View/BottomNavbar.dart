import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:orland_sports/View/Screens/Events/NearbyEvents.dart';
import 'package:orland_sports/View/Screens/History/History.dart';
import 'package:orland_sports/View/Screens/Home/home.dart';
import 'package:orland_sports/View/Screens/Profile/Profile.dart';
import 'package:orland_sports/View/Screens/Search/Search.dart';
import 'package:orland_sports/View/Screens/Store/VirtualStore.dart';
import 'package:orland_sports/View/Screens/matchmaking/ManageMatch.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';

import '../generated/assets.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<Map<String, dynamic>> items;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    updateItems();
  }

  void updateItems() {
    items = [
      {
        'image': currentIndex == 0
            ? Assets.imagesHomefilled
            : Assets.imagesHomeunfilled,
        'label': 'Home',
      },
      {
        'image': currentIndex == 1
              ? Assets.imagesExplorefilled
            : Assets.imagesExploreunfilled,
        'label': 'Explore',
      },
      {
        'image': currentIndex == 2
              ? Assets.imagesStorefilled
            : Assets.imagesStoreunfilled,
        'label': 'Share',
      },
          {
        'image': currentIndex == 3
              ? Assets.imagesHistoryfilled
            : Assets.imagesHistoryunfilled,
        'label': 'History',
      },
      {
        'image': currentIndex == 4
              ? Assets.imagesProfilefilled
            : Assets.imagesProfileunfilled,
        'label': 'Profile',
      },
    ];
  }

  final List<Widget> screens = [
  MyHome(),
  Search(),
 VirtualStore(),
  History(),
Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(0),
        height: Platform.isIOS ? null : 62,
        decoration: BoxDecoration(
          color: kwhite,
          // border: Border.all(color: kgrey1),
          boxShadow: [
            BoxShadow(
              color: kgrey1.withOpacity(0.3),
              offset: const Offset(0, 2),
              blurRadius: 20,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              log(currentIndex.toString());
              updateItems(); // Update items when index changes
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          selectedLabelStyle: TextStyle(
            fontFamily: AppFonts.boston,
            color: kpurple1,
            fontWeight: FontWeight.w600
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: AppFonts.boston,
            color: kgrey2,
          ),
          selectedItemColor: kpurple1,
          unselectedItemColor: kgrey1,
          items: List.generate(
            items.length,
            (index) {
              return BottomNavigationBarItem(
                tooltip: 'ss',
                activeIcon: CommonImageView(
                  imagePath: items[index]['image'],
                  width: 22,
                ),
                icon: CommonImageView(
                  imagePath: items[index]['image'],
                  width: 22,
                ),
                label: items[index]['label'],
                
              );
            },
          ),
        ),
      ),
    );
  }
}

///////////////////////////

