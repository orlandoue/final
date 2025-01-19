import 'package:get/get.dart';
import 'package:orland_sports/const/App_strings.dart';
import 'package:orland_sports/generated/assets.dart';

class POnboardingController extends GetxController {
  static final POnboardingController instance =
      Get.find<POnboardingController>();

  RxInt currentStep = 0.obs;

  void onContinue() {
    if (currentStep == trainerSteps.length - 1) {
      // Get.to(() => const GetStarted());
    } else {
      currentStep++;
    }
  }

  void onBack() {
    if (currentStep.value == 0) {
      Get.back();
    } else {
      currentStep--;
    }
  }

  RxInt trainerStep = 0.obs;

  final List<Map<String, dynamic>> trainerSteps = [
    {
      'progress': 0.3,
      // 'child': const OnBoarding1(),
      'titleText': chooseYourRole,
      'descriptionText':
         rolePrompt,
      'buttonText1': joinAsPlayer,
      'buttonText2':joinAsReferee,
      'image':Assets.imagesOnboarding1
    },
    {
      'progress': 0.6,
      // 'child': Onboarding2(),
      'titleText': gatherFriends,
      'descriptionText':
          setUpMatch,
      'buttonText1': gettingStarted,
      'image':Assets.imagesOnboarding2
    },
    {
      'progress': 0.8,
      // 'child': Onboarding3(),
      'titleText': trackYourProgress,
      'descriptionText':
         monitorProgress,
      'buttonText1': 'Next',
      'image':Assets.imagesOnboarding3
    },
    {
      'progress': 1.0,
      // 'child': onBoarding4(),
      'titleText': competeInRankedMatches,
      'descriptionText':
         challengeYourself,
      'buttonText1': letsGetStarted,
      'image':Assets.imagesOnboarding4
    },
  ];

  void onNext() {
    if (trainerStep.value == trainerSteps.length - 1) {
      // SuccessDialog.showSuccessDialog(cardialog, dialogsubtxt);
    } else {
      trainerStep.value++;
    }
  }

  void onPrevious() {
    if (trainerStep.value == 0) {
      Get.back();
    } else {
      trainerStep.value--;
    }
  }
}
