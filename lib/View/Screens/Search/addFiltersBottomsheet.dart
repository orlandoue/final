import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/Search/SearchCardBottomSheet.dart';
import 'package:orland_sports/View/Widgets/DialogBoxes.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/View/Widgets/myTextField.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/generated/assets.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AddFilters extends StatelessWidget {
  final String? heading;
  final VoidCallback? ontap;

  const AddFilters({super.key, this.heading, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: kwhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Image.asset(
                  Assets.imagesDivider,
                  width: 40,
                  height: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: heading ?? locationradius,
                  color: kblack,
                  size: 20,
                  weight: FontWeight.bold,
                  //textAlign: TextAlign.center,
                ),
                Center(
                    child: StepIndicator(
                  currentStep: 1,
                  totalSteps: 3,
                  stepTexts: ['0 km', '15 km', '30 km'],
                )),
                SizedBox(
                  height: 5,
                ),
                MyButton(
                  onTap: ontap ??
                      () {
                        Get.bottomSheet(SearchCardBottomSheet(),
                            isScrollControlled: true);
                      },
                  buttonText: applyfilters,
                  mBottom: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StepIndicator extends StatefulWidget {
  final int currentStep;
  final int totalSteps;
  final List<String> stepTexts;

  StepIndicator({
    required this.currentStep,
    required this.totalSteps,
    required this.stepTexts,
  });

  @override
  State<StepIndicator> createState() => _StepIndicatorState();
}

class _StepIndicatorState extends State<StepIndicator> {
  SfRangeValues _values = SfRangeValues(20.0, 80.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SfRangeSlider(
        min: 0.0,
        max: 100.0,
        values: _values,
        interval: 50,
        showTicks: false,
        showLabels: true,
        enableTooltip:false,
        activeColor: kpurple1,
        inactiveColor: kgrey1,
        onChanged: (SfRangeValues newValues) {
          setState(() {
            _values = newValues;
          });
        },
        thumbShape: SfThumbShape(),
        trackShape: SfTrackShape(),
        tickShape: SfTickShape(),
        labelFormatterCallback: (dynamic actualValue, String formattedText) {
          return '${formattedText} km';
        },
        tooltipTextFormatterCallback:
            (dynamic actualValue, String formattedText) {
          return '${formattedText} km';
        },
      ),
    );
  }
}
