import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orland_sports/View/Screens/OnBoarding/chooseLogin.dart';
import 'package:orland_sports/View/Widgets/myButton.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/controllers/OnBoardingController.dart';
import 'package:orland_sports/generated/assets.dart';

class OnboardingMain extends StatefulWidget {
  const OnboardingMain({super.key});

  @override
  State<OnboardingMain> createState() => _OnboardingMainState();
}

class _OnboardingMainState extends State<OnboardingMain> {
  final POnboardingController onboardingController = Get.put(POnboardingController());
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final currentStepIndex = onboardingController.trainerStep.value;
      final currentStep = onboardingController.trainerSteps[currentStepIndex];
      final isFinalStep = currentStepIndex == onboardingController.trainerSteps.length - 1;

      return Scaffold(
        body: PageView.builder(
          controller: pageController,
          onPageChanged: (index) {
            onboardingController.trainerStep.value = index;
          },
          itemCount: onboardingController.trainerSteps.length,
          itemBuilder: (context, index) {
            final step = onboardingController.trainerSteps[index];

            return Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(step['image'] ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // Progress bar at the top
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: LinearProgressIndicator(
                      minHeight: 6,
                      backgroundColor: kgrey1,
                      borderRadius: BorderRadius.circular(10),
                      color: kwhite,
                      value: step['progress'],
                    ),
                  ),
                  // Other elements at the bottom
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MyText(
                          text: step['titleText'] ?? '',
                          color: kwhite,
                          size: 24,
                          weight: FontWeight.w800,
                        ),
                        MyText(
                          text: step['descriptionText'] ?? '',
                          color: kwhite,
                          size: 14,
                          weight: FontWeight.w500,
                          paddingBottom: 15,
                        ),
                        MyButton(
                          onTap: () {
                            if (index == onboardingController.trainerSteps.length - 1) {
                              Get.to(() => const ChooseLogin()); // Navigate to ChooseLogin on final step
                            } else {
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          buttonText: step['buttonText1'] ?? '',
                          fillColor: kwhite,
                          fontColor: kpurple1,
                          mBottom: 15,
                        ),
                        if (step.containsKey('buttonText2') && step['buttonText2'] != null && step['buttonText2'] != '')
                          MyButton(
                            onTap: () {
                              if (isFinalStep) {
                                Get.to(() => const ChooseLogin()); // Navigate to ChooseLogin on final step
                              } else {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            buttonText: step['buttonText2'] ?? '',
                            fillColor: kwhite,
                            fontColor: kpurple1,
                            mBottom: 40,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
