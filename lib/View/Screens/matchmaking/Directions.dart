import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/matchmaking/ManageMatch.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';

class Directions extends StatefulWidget {
  const Directions({super.key});

  @override
  State<Directions> createState() => _DirectionsState();
}

class _DirectionsState extends State<Directions> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesMap1),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Progress bar at the top
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                children: [
                  locationContainer('${startPoint} - My Location'),
                  SizedBox(
                    height: 15,
                  ),
                  locationContainer('${endPoint} - Mario Court'),
                ],
              ),
            ),
          ),

          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: Get.height * 0.52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: kwhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      Assets.imagesDivider,
                      width: 40,
                      height: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TabBar(
                      controller: _tabController,
                      indicatorColor: kpurple1,
                      dividerColor: ktransparent,
                      tabs: [
                        Tab(
                            icon: Image.asset(Assets.imagesCar,
                                width: 24, height: 24)),
                        Tab(
                            icon: Image.asset(Assets.imagesBicycle,
                                width: 24, height: 24)),
                        Tab(
                            icon: Image.asset(Assets.imagesWalk,
                                width: 24, height: 24)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        physics: BouncingScrollPhysics(),
                        children: [
                          _buildTabContent(car),
                          _buildTabContent(bike),
                          _buildTabContent(walk),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}

Widget _buildTabContent(String type) {
  return ListView(
    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
    physics: const BouncingScrollPhysics(),
    children: [
      Column(
        children: [
          MyText(
            text: 'Est Time: 12 Minutes',
            size: 20,
            weight: FontWeight.bold,
            color: kpurple1,
            textAlign: TextAlign.center,
            paddingBottom: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: 'Mario Court',
                size: 16,
                weight: FontWeight.bold,
                color: kpurple1,
              ),
              Image.asset(
                Assets.imagesForwardicon,
                width: 30,
                height: 30,
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Image.asset(
                Assets.imagesStar,
                width: 18,
                height: 18,
              ),
              MyText(
                text: '5.0 (25 reviews)',
                size: 14,
                color: kblack2,
                paddingLeft: 5,
              ),
              Spacer(),
              MyText(
                text:direction,
                size: 14,
                weight: FontWeight.w400,
                color: kgrey1,
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      MyText(
        text: 'Main St. 2, Phase 3, Islamabad',
        size: 14,
        weight: FontWeight.w400,
        color: kgrey1,
      ),
      MyText(
        paddingTop: 6,
        text: '2 km away',
        size: 14,
        weight: FontWeight.w400,
        color: kgrey1,
        paddingBottom: 10,
      ),
      MyText(
        text: '${matchtime}: 10:30 AM',
        size: 14,
        weight: FontWeight.w400,
        color: kgrey1,
      ),
      SizedBox(
        height: 20,
      ),
      MyButton(
        onTap: () {
          Get.to(()=>ManageMatch());
        },
        buttonText: startJourney,
        mBottom: 30,
      ),
    ],
  );
}

Widget locationContainer(String locationtype) {
  return Container(
    //margin: EdgeInsets.only(bottom: 18),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kgrey2),
        color: kwhite),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(text: locationtype, color: kblack2, size: 14),
        Icon(
          Icons.close,
          color: kgrey1,
        )
      ],
    ),
  );
}
