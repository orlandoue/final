import 'package:flutter/material.dart';
import 'package:orland_sports/const/appColors.dart';


class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    Key? key,
    required this.isActive,
    required this.onTap,
    this.unSelectedColor,
    this.selectedColor,
    this.borderColor,
    this.size,
    this.iscircle,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback onTap;
  Color? unSelectedColor, selectedColor, borderColor;
  bool? iscircle;
  double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 230,
        ),
        curve: Curves.easeInOut,
        height: size ?? 23,
        width: size ?? 23,
        decoration: BoxDecoration(
          color: isActive ? selectedColor ?? kpurple1 : ktransparent,
          border: Border.all(
            width: 1.0,
            color: isActive ? borderColor ?? Colors.transparent : kgrey1,
          ),
          borderRadius: BorderRadius.circular(iscircle == true ? 50 : 3),
        ),
        child: Center(
          child: Icon(
          iscircle==true?Icons.circle_sharp:  Icons.check,
            size: 14,
            color:isActive==true? kwhite:ktransparent,
          ),
        ),
      ),
    );
  }
}