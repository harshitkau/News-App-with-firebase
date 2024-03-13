import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/auth_controller.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class Authentication extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.logo,
              width: 140,
            ),
            10.heightBox,
            Text(
              AppStrings.welcome,
              style: AppStyles().semibold(),
            ),
            10.heightBox,
            Text(
              AppStrings.signInToContinue,
              style: AppStyles().regular(color: AppColors.secondaryText),
            ),
            Spacer(),
            VxBox(
                    child: Text(
              AppStrings.signInGoogle,
              style: AppStyles().regular(color: AppColors.white),
            ))
                .width(context.screenWidth - 20)
                .color(AppColors.google)
                .padding(
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10))
                .rounded
                .alignment(Alignment.center)
                .make(),
            10.heightBox,
            VxBox(
                    child: Text(
              AppStrings.signInFB,
              style: AppStyles().regular(color: AppColors.white),
            ))
                .width(context.screenWidth - 20)
                .color(AppColors.fb)
                .padding(
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10))
                .rounded
                .alignment(Alignment.center)
                .make(),
            Spacer(),

            TextButton(
              onPressed: () {
                controller.navigateToLogin();
              },
              child: Text(
                AppStrings.continuewithEmail,
                style: AppStyles().semibold(color: AppColors.secondaryButton),
              ),
            ),
            // 10.heightBox,
            Text(
              AppStrings.privacyPolicyTermCondn,
              style:
                  AppStyles().regular(color: AppColors.secondaryText, size: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.privacyPolicy,
                    style: AppStyles().regular(size: 12),
                  ),
                ),
                Text(
                  " and ",
                  style: AppStyles().regular(size: 12),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.termsCondition,
                    style: AppStyles().regular(size: 12),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
