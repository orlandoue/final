// ignore: must_be_immutable

import 'package:flutter/material.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';

class MyText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String text;
  final String? fontFamily;
  final TextAlign? textAlign;
  final TextDecoration decoration;
  final FontWeight? weight;
  final TextOverflow? textOverflow;
  final Color? color;
  final FontStyle? fontStyle;
  final VoidCallback? onTap;
  List<Shadow>? shadow;
  final int? maxLines;
  final double? size;
  final double? lineHeight;
  final double? paddingTop;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingBottom;
  final double? letterSpacing;
  final bool isEllipsized;

  MyText({
    Key? key,
    required this.text,
    this.size,
    this.lineHeight,
    this.maxLines = 100,
    this.decoration = TextDecoration.none,
    this.color,
    this.letterSpacing,
    this.weight = FontWeight.w400,
    this.textAlign,
    this.textOverflow,
    this.fontFamily,
    this.paddingTop = 0,
    this.paddingRight = 0,
    this.paddingLeft = 0,
    this.paddingBottom = 0,
    this.onTap,
    this.shadow,
    this.fontStyle,
    this.isEllipsized = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop!,
        left: paddingLeft!,
        right: paddingRight!,
        bottom: paddingBottom!,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          "$text",
          style: TextStyle(
            shadows: shadow,
            fontSize: size ?? 12,
            color: color ?? kgrey1,
            fontWeight: weight,
            decoration: decoration,
            decorationColor: color ?? kgrey1,
            decorationThickness: 1,
            fontFamily: fontFamily ?? AppFonts.boston,
            height: lineHeight,
            fontStyle: fontStyle,
            letterSpacing: 0.5,
          ),
          textAlign: textAlign,
          // maxLines: maxLines,
          // overflow: textOverflow,
          maxLines: isEllipsized ? 1 : maxLines,
          overflow: isEllipsized
              ? TextOverflow.ellipsis
              : textOverflow ?? TextOverflow.visible,
        ),
      ),
    );
  }
}