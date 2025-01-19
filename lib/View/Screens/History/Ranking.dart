import 'package:flutter/material.dart';
import 'package:orland_sports/View/Screens/History/BestRankingCategory.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/ProgressIndicator.dart';
import 'package:orland_sports/View/Widgets/RankingCard.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';
import 'package:orland_sports/generated/assets.dart';

class Ranking extends StatefulWidget {
  const Ranking({super.key});

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
   final List<Widget> tabBarView = [RankingCategory(), RankingCategory()];

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = [bestOfTheMonth, weeklyTop];
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: ranking,
        haveBackButton: true,
        centerTitle: false,
      ),
      body: DefaultTabController(
        length: _tabs.length,
        initialIndex: 0,
        child: Scaffold(
          body: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 400,
                  centerTitle: false,
                  backgroundColor: kwhite,
                  pinned: false,
                  floating: false,
                  leading: null,
                  iconTheme: IconThemeData(color: Colors.transparent),
                  flexibleSpace: FlexibleSpaceBar(
                    background: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        RankingCard(),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  MyText(
                                    text: '3.55',
                                    color: kblack2,
                                    size: 20,
                                    weight: FontWeight.bold,
                                  ),
                                  MyText(
                                    text: monthlyPoints,
                                    color: kblack2,
                                    size: 14,
                                    weight: FontWeight.w600,
                                    paddingBottom: 6,
                                  ),
                                  myLinearProgressIndicator(
                                    size: 120,
                                  )
                                ],
                              ),
                              CommonImageView(
                                imagePath: Assets.imagesTropy,
                                width: 39,
                                height: 53,
                              ),
                              Column(
                                children: [
                                  MyText(
                                    text: '3.55',
                                    color: kblack2,
                                    size: 20,
                                    weight: FontWeight.bold,
                                  ),
                                  MyText(
                                    text: weeklyPoints,
                                    color: kblack2,
                                    size: 14,
                                    weight: FontWeight.w600,
                                    paddingBottom: 6,
                                  ),
                                  myLinearProgressIndicator(
                                    size: 120,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size(0, 55),
                    child: Container(
                      color: kwhite,
                      width: double.infinity,
                      height: 50,
                      child: TabBar(
                        automaticIndicatorColorAdjustment: false,
                        labelColor: kblack,
                        unselectedLabelColor: kgrey1,
                        labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.boston,
                            color: kblack),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.boston,
                            color: kgrey1),
                        // controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: ktransparent,
                        indicatorColor: kblack,
                        labelPadding: EdgeInsets.zero,
                        tabs: List.generate(
                          _tabs.length,
                          (index) => Tab(
                            text: _tabs[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
                physics: BouncingScrollPhysics(), children: tabBarView),
          ),
        ),
      ),
    );
  }
}
