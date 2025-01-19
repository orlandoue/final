import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Search/SearchCardBottomSheet.dart';
import 'package:orland_sports/View/Screens/Search/addFiltersBottomsheet.dart';
import 'package:orland_sports/View/Widgets/ButtonContainer.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/HomeContainers.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
            child: MyTextField(
              hint: search
            ),
          ),
          // Other elements at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                    SizedBox(
              height: 158,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    margin: const EdgeInsets.only(right: 4),
                    child:SearchCard(
                            imageUrl: dummyImage,
                            title: 'Mario Court',
                            rating: '5.0',
                            reviews: '25',
                            distance: '2 km away',
                            tags: [sports, tennis, matches],
                          )
                  );
                },
              ),
            ),
               
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
//////////

class SearchCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String reviews;
  final String distance;
  final List<String> tags;

  SearchCard({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviews,
    required this.distance,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Get.bottomSheet(AddFilters(),isScrollControlled: true);},
      child: Card(
        elevation: 1
        ,
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
                
                width: 100,
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
                        Row(
                          children: [
                            Image.asset(
                          Assets.imagesTicket,
                          width: 28,
                          height: 28,
                        ),
                            MyText(
                              text: 'x1',
                              size: 14,
                              weight: FontWeight.bold,
                              color: kblack2,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Rating and Reviews
                    Row(
                      children: [
                       Image.asset(
                          Assets.imagesStar,
                          width: 18,
                          height: 18,
                        ),
                        MyText(
                          text: '$rating ($reviews reviews)',
                          size: 14,
                          color: kblack2,
                          paddingLeft: 5,
                         
                        ),
                      ],
                    ),
                 SizedBox(height: 4,),
                    // Distance
                    MyText(
                      text: distance,
                      size: 14,
                      color: kgrey1,
                      paddingBottom: 5,
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
