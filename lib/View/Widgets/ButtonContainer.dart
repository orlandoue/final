import 'package:flutter/material.dart';

import 'package:orland_sports/const/appColors.dart';

import 'myText.dart';




class buttonContainer extends StatelessWidget {
  final Color? bgColor;
  final String? text;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color? txtColor;
  final Color? iconColor;
  final double? hPadding;
  final double? vPadding;
  final Color? borderColor;
  final double? radius;
  final String? imagePath;
  final double? iconSize;
  final double? imageSize;
  final double? heigth;
  final double? textsize;
final bool? iscenter;
  const buttonContainer({
    super.key,
    this.bgColor,
    this.text,
    this.icon,
    this.onTap,
    this.txtColor,
    this.iconColor,
    this.hPadding,
    this.borderColor,
    this.radius,
    this.vPadding,
    this.imagePath,
    this.iconSize,
    this.imageSize,
    this.heigth, this.textsize, this.iscenter=true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: heigth,
        padding: EdgeInsets.symmetric(
            horizontal: hPadding ?? 10, vertical: vPadding ?? 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 20),
          color: bgColor ?? Color(0xffF3EBF6),
          border: Border.all(color: borderColor ?? Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: iscenter==true?MainAxisAlignment.center:MainAxisAlignment.start,
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath!,
                width: imageSize ?? 18,
                height: imageSize ?? 18,
                // color: iconColor ?? kwhite,
              )
            else if (icon != null)
              Icon(
                icon!,
                size: iconSize ?? 18,
                color: iconColor ?? kwhite,
              ),
            if (text != null)
              MyText(
                text: text!,
                color: txtColor ??kblack2,
                size:textsize?? 13,
                weight: FontWeight.w600,
                paddingLeft: (icon != null || imagePath != null) ? 3 : 0,
              ),
          ],
        ),
      ),
    );
  }
}