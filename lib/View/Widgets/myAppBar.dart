import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Home/Notifications.dart';
import 'package:orland_sports/View/Screens/Home/ProfileInfo.dart';
import 'package:orland_sports/View/Widgets/ButtonContainer.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

AppBar simpleAppBar2({
  String? title,
  double? size,
  VoidCallback? onBackIconTap,
  Color? bgColor,
  Color? contentColor,
  bool haveBackButton = true,
  bool centerTitle = false,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: bgColor ?? kwhite,
    surfaceTintColor: kwhite,
    centerTitle: centerTitle,
    
    iconTheme: IconThemeData(
      color: Colors.transparent,
    ),
    leadingWidth: haveBackButton ? 35 : 0,
    leading: haveBackButton
        ? GestureDetector(
            onTap: onBackIconTap ?? () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset(
                Assets.imagesBackicon,
                height: 38,
                width: 38,
              ),
            ),
          )
        : null,
    title: MyText(
      text: title ?? '',
      size:size?? 20,
      weight: FontWeight.w700,
      color: contentColor ?? kblack2,
    ),
    actions: actions,
  );
}
////////////////////////////////////////

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(dummyImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'Hi,  Jonas!',
                color: kblack2,
                size: 18,
                weight: FontWeight.bold,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: kpurple1,
                    size: 16,
                  ),
                  MyText(
                    text: 'G-8 Markaz',
                    color: kpurple1,
                    size: 14,
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              ticketcount(),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=>Notifications());
                },
                child: CommonImageView(
                  imagePath: Assets.imagesNotifications,
                  width: 15,
                  height: 16,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ticketcount extends StatelessWidget {
  final String? ticketnumber;
  const ticketcount({
    super.key, this.ticketnumber,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        buttonContainer(
          text:ticketnumber?? '2 +',
          bgColor: kgrey2,
          hPadding: 20,
          vPadding: 1.5,
          onTap: (){   Get.to(()=>ProfileInfo());},
        ),
        Positioned(
            top: -8,
            left: -5,
            child: Image.asset(
              Assets.imagesTicket,
              width: 28,
              height: 28,
            ))
      ],
    );
  }
}

