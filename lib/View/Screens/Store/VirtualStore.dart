import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Store/orderSummary.dart';
import 'package:orland_sports/View/Widgets/ButtonContainer.dart';
import 'package:orland_sports/View/Widgets/CommonImageView.dart';
import 'package:orland_sports/View/Widgets/myAppBar.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:orland_sports/main.dart';

class VirtualStore extends StatefulWidget {
  const VirtualStore({super.key});

  @override
  State<VirtualStore> createState() => _VirtualStoreState();
}

class _VirtualStoreState extends State<VirtualStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: simpleAppBar2(
          title: virtualStore,
          haveBackButton: false,
          centerTitle: false,
          actions: [
            ticketcount(),
            SizedBox(
              width: 13,
            )
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                AddTicketCard(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(dummyImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: kpurple1.withOpacity(0.75),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: explore,
                                color: kwhite,
                                size: 14,
                                weight: FontWeight.w600,
                                textAlign: TextAlign.left,
                              ),
                              MyText(
                                text:
                                  participateToFinal,
                                color: kwhite,
                                size: 12,
                                weight: FontWeight.w400,
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                textOverflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget AddTicketCard() {
  return Column(
    crossAxisAlignment:
        CrossAxisAlignment.start, // Align all children to the start
    children: [
      Row(
        children: [
          Container(
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kpurple1)),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CommonImageView(
                        imagePath: Assets.imagesTicket2,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8)),
                          color: kpurple1),
                      child: MyText(
                        text: '\$100',
                        color: kwhite,
                        size: 14,
                        weight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: kpurple1,
                ),
                MyText(
                  text:simpleticket,
                  color: kpurple1,
                  size: 14,
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                )
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              Assets.imagesMinus,
              width: 24,
              height: 24,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          buttonContainer(
            text: '1',
            radius: 4,
            vPadding: 6,
            hPadding: 25,
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              Assets.imagesPlus,
              width: 24,
              height: 24,
            ),
          )
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        width: 150,
        child: MyButton(
          onTap: () {
            Get.to(() => OrderSummary());
          },
          buttonText: buy,
          mhoriz: 0,
        ),
      )
    ],
  );
}
