import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Events/Payments/PaymentMethod.dart';
import 'package:orland_sports/View/Screens/Profile/EditProfile.dart';
import 'package:orland_sports/View/Screens/Profile/Help/Help.dart';
import 'package:orland_sports/View/Screens/Profile/Notifications.dart';
import 'package:orland_sports/View/Screens/Profile/PrivacyPolicy.dart';
import 'package:orland_sports/View/Screens/Profile/QR_Code.dart';
import 'package:orland_sports/View/Screens/Profile/Security.dart';
import 'package:orland_sports/View/Screens/Profile/language.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
        title: 'My Profile',
        haveBackButton: false,
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                ImageStack(),
                MyText(
                  text: 'Jonas Mark',
                  color: kblack2,
                  size: 16,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center,
                  paddingBottom: 5,
                  paddingTop: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: 'Rank: Gold',
                      color: kgrey1,
                      size: 16,
                      weight: FontWeight.w500,
                      paddingRight: 6,
                    ),
                    Image.asset(
                      Assets.imagesTrophyicon,
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: 'Profile',
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.bold,
                  paddingRight: 6,
                  paddingBottom: 15,
                ),
                ProfileRow(
                  title: 'Edit Profile',
                  icon: Assets.imagesProfile,
                  ontap: () {   Get.to(() =>EditProfile() );},
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileRow(
                  title: 'My QR Code',
                  icon: Assets.imagesQrCode,
                  ontap: () {
                    Get.to(() => QRCode());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileRow(
                  title: 'Security',
                  icon: Assets.imagesSafety,
                  ontap: () {
                     Get.to(() =>Security() );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: 'Payment & Notifications',
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.bold,
                  paddingRight: 6,
                  paddingBottom: 15,
                ),
                ProfileRow(
                  title: 'Payment Method',
                  icon: Assets.imagesPayment,
                  ontap: () {
                       Get.to(() =>PaymentMethod() );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileRow(
                  title: 'Notification',
                  icon: Assets.imagesNotifications,
                  ontap: () { Get.to(() =>Notifictaionss() );},
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: 'Other',
                  color: kgrey1,
                  size: 14,
                  weight: FontWeight.bold,
                  paddingRight: 6,
                  paddingBottom: 15,
                ),
                ProfileRow(
                  title: 'Privacy Policy',
                  icon: Assets.imagesPrivacy,
                  ontap: () {
                    Get.to(() =>PrivacyPolicy() );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileRow(
                  title: 'Help Center',
                  icon: Assets.imagesHelp,
                  ontap: () {
                     Get.to(() =>HelpCenter() );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileRow(
                  title: 'Language',
                  icon: Assets.imagesLanguage,
                  ontap: () {
                    Get.to(() =>LanguageProfile() );
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                ProfileRow(
                  title: 'Logout',
                  titleColor: kred,
                  icon: Assets.imagesLogout,
                  ontap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//////////////////////////////
class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(dummyImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          Positioned(
            bottom: -6,
            right: -8,
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                Assets.imagesEdit,
                width: 24,
                height: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback ontap;
  final Color? titleColor;
  const ProfileRow({
    super.key,
    required this.title,
    required this.icon,
    required this.ontap,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: [
          CommonImageView(
            imagePath: icon,
            width: 22,
            height: 22,
          ),
          MyText(
            text: title,
            color: titleColor ?? kblack2,
            size: 15,
            weight: FontWeight.bold,
            paddingLeft: 6,
          ),
          Spacer(),
          CommonImageView(
            imagePath: Assets.imagesArrowright,
            width: 22,
            height: 22,
          ),
        ],
      ),
    );
  }
}
