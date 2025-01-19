import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/StarRatings.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/main.dart';

class ReviewsSection extends StatelessWidget {
  final String? name;
  final String? review;
  final String? img;
  final double? ratings;
  final String? time;

  final String? ratingtxt;
  final VoidCallback? moreTap;
  const ReviewsSection({
    super.key,
    this.name,
    this.review,
    this.img,
    this.ratings,
    this.time, this.ratingtxt, this.moreTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(img??dummyImage)
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: name ?? 'Madelina',
                        color: kblack2,
                        weight: FontWeight.w800,
                        size: 14,
                      ),
                
                      MyText(
                        text: time ?? '1 day ago',
                        color: kgrey1,
                        weight: FontWeight.w500,
                        size: 13,
                      ),
                    
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      StarRating(
                        rating: ratings ?? 4,
                        
                      ),
                            MyText(
                        text: ratingtxt ?? '5.0',
                        color: kblack2,
                        weight: FontWeight.w500,
                        size: 14,
                        paddingLeft: 4,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  MyText(
                    text: review ??
                        'Exceptional service! The teacher showed meticulous attention to detail, providing a Quran education that surpassed all expectations. Highly recommended for a superior learning experience.',
                    color: kgrey1,
                    weight: FontWeight.w500,
                    size: 13,
                    textAlign: TextAlign.justify,
                  ),
                
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}