import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/login_controller.dart';
import 'package:news_app/widget/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        actions: [
          TextButton(
              onPressed: () {
                controller.navigateAsGuest();
              },
              child: Text(AppStrings.continueAsGuest,
                  style: AppStyles().regular(
                    color: AppColors.secondaryButton,
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.login,
                style: AppStyles().semibold(size: 16),
              ),
              Text(
                AppStrings.followSimple,
                style: AppStyles()
                    .regular(size: 12, color: AppColors.secondaryText),
              ),
              40.heightBox,
              CustomTextField(
                  hint: AppStrings.emailhint,
                  label: AppStrings.email,
                  isPassword: false),
              CustomTextField(
                  hint: AppStrings.passwordHint,
                  label: AppStrings.password,
                  isPassword: true),
              30.heightBox,
              SizedBox(
                  width: context.screenWidth,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        backgroundColor: AppColors.primaryButton,
                      ),
                      onPressed: () {},
                      child: Text(
                        AppStrings.login,
                        style: AppStyles().semibold(color: AppColors.white),
                      ))),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.dontHaveAccount,
                    style: AppStyles().regular(color: AppColors.secondaryText),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.navigateToSignUp();
                      },
                      child: Text(
                        AppStrings.signUp,
                        style: AppStyles()
                            .regular(color: AppColors.secondaryButton),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
