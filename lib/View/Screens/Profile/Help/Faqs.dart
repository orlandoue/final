import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              physics: const BouncingScrollPhysics(),
              children: [
                CustomAccordion(),
                SizedBox(
                  height: 15,
                ),
                CustomAccordion(),
                SizedBox(
                  height: 15,
                ),
                CustomAccordion(),
                SizedBox(
                  height: 15,
                ),
                CustomAccordion(),
                SizedBox(
                  height: 15,
                ),
                CustomAccordion(),
                SizedBox(
                  height: 15,
                ),
                CustomAccordion(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAccordion extends StatefulWidget {
  const CustomAccordion({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAccordion> createState() => _CustomAccordionState();
}

class _CustomAccordionState extends State<CustomAccordion> {
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _isOpen ? kwhite : kwhite,
          //  border: Border.all(color: kbluewithopacity.withOpacity(0.5))
        ),
        child: Theme(
          data: ThemeData(
            dividerColor: kgrey2,
          ),
          child: ExpansionTile(
            title: MyText(
              text: "Lorem ipsum is dummy text?",
              size: 16,
              weight: FontWeight.w700,
              color: kblack2,
            ),
            backgroundColor: kgrey2.withOpacity(0.5),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(color: kgrey2),
                    ),
                    ListTile(
                        title: MyText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      size: 12,
                      weight: FontWeight.w500,
                      color: kblack2,
                    )),
                  ],
                ),
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _isOpen = expanded;
              });
            },
          ),
        ),
      ),
    );
  }
}
