import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';


class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double? size;
final Color? color;
  StarRating({required this.rating, this.starCount = 5, this.size = 15.0, this.color=kgrey1});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    double remainingRating = rating - fullStars;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        if (index < fullStars) {
          // Full star
          return Padding(
            padding: const EdgeInsets.only(top:3.0,bottom: 3,right: 3),
            child: CommonImageView(
              imagePath: Assets.imagesStar,
              fit: BoxFit.contain,
              width: size,
              height: size,
            ),
          );
        } else if (index == fullStars && remainingRating > 0) {
          // Partial star
          return Padding(
          padding: const EdgeInsets.only(top:3.0,bottom: 3,right: 3),
            child: CommonImageView(
              imagePath: Assets.imagesStar,
              height: size,
              width: size,
              color: color,
            ),
          );
        } else {
          // Empty star
          return Padding(
            padding: const EdgeInsets.only(top:3.0,bottom: 3,right: 3),
            child: CommonImageView(
              imagePath: Assets.imagesStar,
              height: size,
              width: size,
              color: color,
            ),
          );
        }
      }),
    );
  }
}