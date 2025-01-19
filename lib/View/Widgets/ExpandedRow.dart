import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';


class ExpandedRow extends StatelessWidget {
  final String text1;
  final String text2;
  final Color? color1;
  final Color? color2;
  final FontWeight? weight1;
  final FontWeight? weight2;
  final double? size1;
  final double? size2;
  final VoidCallback? ontap2;
  const ExpandedRow({
    super.key,
    required this.text1,
    required this.text2,
    this.color1,
    this.color2,
    this.weight1,
    this.weight2,
    this.size1,
    this.size2,
    this.ontap2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: text1, //'\$39.69',
          size: size1 ?? 14,
          color: color1 ?? kblack2,
          weight: weight1 ?? FontWeight.w500,
        ),
        MyText(
          text: text2, //'Free Now Booking Fee',
          size: size2 ?? 14,
          color: color2 ?? kblack2,
          weight: weight2 ?? FontWeight.w500,
          onTap: ontap2,
        ),
      ],
    );
  }
}

class TwoTextedColumn extends StatelessWidget {
  final String text1;
  final String text2;
  final Color? color1;
  final Color? color2;
  final FontWeight? weight1;
  final FontWeight? weight2;
  final double? size1;
  final double? size2;
  const TwoTextedColumn({
    super.key,
    required this.text1,
    required this.text2,
    this.color1,
    this.color2,
    this.weight1,
    this.weight2,
    this.size1,
    this.size2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: text1,
          size: size1 ?? 14,
          color: color1 ?? kblack2,
          weight: weight1 ?? FontWeight.bold,
          paddingBottom: 3,
          
        ),
        MyText(
          text: text2,
          size: size2 ?? 14,
          color: color2 ?? kgrey1,
          weight: weight2 ?? FontWeight.w400,
          maxLines: 2,
          textOverflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}