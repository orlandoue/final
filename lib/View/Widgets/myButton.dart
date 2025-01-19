
import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';


// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({
    required this.onTap,
    this.width,
    this.buttonText,
    this.height = 48,
    this.fillColor = kpurple1,
    this.fontColor = kwhite,
    this.fontSize = 18,
    this.outlineColor = Colors.transparent,
    this.radius = 12,
    this.svgIcon,
    this.choiceIcon,
    this.isleft = false,
    this.hasicon,
    this.hasgrad = true,
    this.mBottom = 0,
    this.mhoriz = 0,
    this.fontWeight = FontWeight.w700,
    this.icon,
    this.image,
    this.iconSize = 24,
    this.iconPosition = IconPosition.left,
    this.imgColor
  });

  final String? buttonText;
  final VoidCallback onTap;
  final double? height, width;
  final double radius;
  final double fontSize;
  final Color outlineColor;
  final Color? imgColor;
  bool? hasicon, isleft, hasgrad;
  String? choiceIcon;
  final Color fillColor, fontColor;
  final String? svgIcon;
  final IconData? icon;
  final String? image;
  final double iconSize;
  final IconPosition iconPosition;

  final double mhoriz, mBottom;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: mhoriz, right: mhoriz, bottom: mBottom),
        height: height,
        width: width,
        decoration: hasgrad == true
            ? BoxDecoration(
                color: fillColor,
                border: Border.all(color: outlineColor),
                borderRadius: BorderRadius.circular(radius),
              )
            : BoxDecoration(
                color: fillColor,
                border: Border.all(color: outlineColor),
                borderRadius: BorderRadius.circular(radius),
              ),
        child: Align(
          alignment: isleft == true ? Alignment.centerLeft : Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
                isleft == true ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              if (icon != null && buttonText != null && iconPosition == IconPosition.left)
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(icon, color: fontColor, size: iconSize),
                ),
              if (image != null && buttonText != null && iconPosition == IconPosition.left)
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Image.asset(image!, height: iconSize, width: iconSize),
                ),
              if (buttonText != null)
                MyText(
                  text: buttonText!,
                  size: fontSize,
                  color: fontColor,
                  weight: fontWeight,
                  paddingLeft: isleft == true ? 10 : 0,
                ),
              if (icon != null && buttonText != null && iconPosition == IconPosition.right)
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(icon, color: fontColor, size: iconSize),
                ),
              if (image != null && buttonText != null && iconPosition == IconPosition.right)
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Image.asset(image!, height: iconSize, width: iconSize),
                ),
              if (icon != null && buttonText == null)
                Icon(icon, color: fontColor, size: iconSize),
              if (image != null && buttonText == null)
                Image.asset(image!, height: iconSize, width: iconSize,color: imgColor,),
            ],
          ),
        ),
      ),
    );
  }
}

enum IconPosition { left, right }