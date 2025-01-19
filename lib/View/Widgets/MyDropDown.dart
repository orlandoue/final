import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    this.label,
    required this.hint,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.mBottom,
    this.prefix,
    this.label2,
    this.radius,
    this.bgcolor,
    this.borderColor,
    this.labelWeight
  });

  final List<dynamic> items;
  final String selectedValue;
  final ValueChanged<dynamic> onChanged;
  final String hint;
  final String? label;
  final String? label2;
  double? mBottom;
  bool? prefix;
  double? radius;
Color? bgcolor, borderColor;
FontWeight? labelWeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: mBottom ?? 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: label,
                  style: TextStyle(
                    color: kblack,
                    fontFamily: AppFonts.boston,
                    fontSize: 16,
                    fontWeight:labelWeight?? FontWeight.w500,
                  )),
              TextSpan(
                  text: label2,
                  style: TextStyle(
                      fontFamily: AppFonts.boston,
                      fontSize: 17,
                      color: kblack,
                      fontWeight: FontWeight.w400))
            ])),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              items: items
                  .map(
                    (item) => DropdownMenuItem<dynamic>(
                      value: item,
                      child: MyText(
                        text: item,
                        size: 14,
                        weight: FontWeight.w400,
                        color: kgrey1,
                      ),
                    ),
                  )
                  .toList(),
              value: selectedValue,
              onChanged: onChanged,
              isDense: true,
              isExpanded: false,
              customButton: Container(
                height: 48,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color:bgcolor?? kwhite,
                  border: Border.all(
                    color:borderColor?? kgrey2,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(radius ?? 10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        if (prefix == true)
                          Icon(
                            Icons.search,
                            color: kgrey2,
                          ),
                        MyText(
                          text: selectedValue == hint ? hint : selectedValue,
                          size: 14,
                          weight: FontWeight.w400,
                          paddingLeft: 3,
                          color: selectedValue == hint ? kgrey1 : kgrey1,
                          textOverflow: TextOverflow.ellipsis,
                          isEllipsized: true,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: kgrey1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              menuItemStyleData: MenuItemStyleData(
                height: 35,
              ),
              dropdownStyleData: DropdownStyleData(
                elevation: 1,
                maxHeight: 300,
                offset: Offset(0, -2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kgrey2),
                  color: kwhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}