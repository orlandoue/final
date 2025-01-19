import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Events/EventDetails.dart';
import 'package:orland_sports/View/Widgets/ButtonContainer.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/main.dart';

class NearbyEvents extends StatefulWidget {
  const NearbyEvents({super.key});

  @override
  State<NearbyEvents> createState() => _NearbyEventsState();
}

class _NearbyEventsState extends State<NearbyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: eventNearby,
        haveBackButton: true,
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      TournamentCard(
                        imageUrl: dummyImage,
                        title: tournament,
                        price: '\$15',
                        distance: '2 km away',
                        tags: [sports, tennis, matches],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class TournamentCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String distance;
  final List<String> tags;

  TournamentCard({
    required this.imageUrl,
    required this.title,
    required this.distance,
    required this.tags,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(()=>
        Eventdetails());
      },
      child: Card(
        elevation: 0,
        color: kwhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            // Image section
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: CommonImageView(
                url: imageUrl,
                width: 74,
                height: 105,
                fit: BoxFit.cover,
              ),
            ),
            // Content section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and Badge
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: title,
                          size: 16,
                          weight: FontWeight.bold,
                          color: kpurple1,
                        ),
                        MyText(
                          text: price,
                          size: 14,
                          weight: FontWeight.bold,
                          color: kblack2,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),

                    // Distance
                    MyText(
                      text: distance,
                      size: 14,
                      color: kgrey1,
                      paddingBottom: 10,
                    ),

                    // Tags
                    Row(
                      children: tags.map((tag) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: buttonContainer(
                            text: tag,
                            bgColor: kgrey2,
                            txtColor: kgrey1,
                            radius: 6,
                            hPadding: 5,
                            vPadding: 2,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
