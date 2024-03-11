import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/onboarding_controller.dart';
import 'package:news_app/res/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    var titles = [
      AppStrings.onboardingTitle0,
      AppStrings.onboardingTitle1,
      AppStrings.onboardingTitle2,
    ];
    var desc = [
      AppStrings.onboardingDesc0,
      AppStrings.onboardingDesc1,
      AppStrings.onboardingDesc2,
    ];
    controller.pageController;
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        onPageChanged: (value) => controller.changeIndex(value),
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Expanded(
                child: Image.asset(
                  "${AppAssets.onboarding}$index.png",
                ),
              ),
              20.heightBox,
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        titles[index],
                        style: AppStyles().semibold(size: 16),
                      ),
                      5.heightBox,
                      VxBox()
                          .size(100, 5)
                          .color(AppColors.primaryButton)
                          .rounded
                          .make(),
                      10.heightBox,
                      Text(
                        desc[index],
                        style:
                            AppStyles().regular(color: AppColors.secondaryText),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
              onPressed: () {
                controller.orContinueOrSkippedPressed();
              },
              child: Text(
                "Skip",
                style: AppStyles().semibold(color: AppColors.secondaryText),
              )),
          Obx(() => Row(
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(index == controller.currentIndex ? 10 : 5, 5)
                        .color(index == controller.currentIndex
                            ? AppColors.primaryButton
                            : AppColors.sliderDot)
                        .rounded
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              )),
          Obx(() => controller.currentIndex < 2
              ? IconButton(
                  onPressed: controller.changePage(controller.currentIndex),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondaryButton,
                  ))
              : TextButton(
                  onPressed: () {
                    controller.orContinueOrSkippedPressed();
                  },
                  child: Text("Continue",
                      style: AppStyles().semibold(
                        color: AppColors.secondaryButton,
                      ))))
        ]),
      ),
    );
  }
}
