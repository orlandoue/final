
import 'package:flutter/material.dart';
import 'package:orland_sports/View/Screens/Profile/Help/ContactUs.dart';
import 'package:orland_sports/View/Screens/Profile/Help/Faqs.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  final List<Widget> tabBarView = [FAQ(), ContactUs()];
  final List<String> _tabs = [
    "FAQ's",
    'Contact Us',
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: kwhite,
        key: _scaffoldKey,
        appBar: simpleAppBar2(
          title: 'Help Center',
      haveBackButton: true,
      centerTitle: false
        ),
      
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 50,
                centerTitle: false,
                backgroundColor: kwhite,
                surfaceTintColor: kwhite,
                pinned: true,
                floating: false,
                leading: null,
                iconTheme: IconThemeData(color: Colors.transparent),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: kwhite,
                    width: double.infinity,
                    height: 50,
                    child: TabBar(
                      automaticIndicatorColorAdjustment: false,
                      labelColor: kpurple1,
                      unselectedLabelColor: kgrey1,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppFonts.boston,
                          color: kpurple1),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppFonts.boston,
                          color: kgrey1),
                      // controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      dividerColor: ktransparent,
                      indicatorColor: kpurple1,
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
    );
  }
}