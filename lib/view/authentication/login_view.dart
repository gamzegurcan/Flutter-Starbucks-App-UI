import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/product/widget/custom_elevated_button.dart';
import 'package:starbucks_app/product/widget/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 1,
      width: context.width * 1,
      child: Padding(
        padding: context.paddingLow * 2,
        child: _columnLogin(context),
      ),
    );
  }

  Column _columnLogin(BuildContext context) {
    return Column(
      children: [
        context.emptySizedHeightBoxHigh,
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppText.title.toUpperCase(),
            textAlign: TextAlign.left,
            style: TextStyles.h1(context, AppColors.darkGreenPrimary),
          ),
        ),
        context.emptySizedHeightBoxLow3x,
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppText.welcome,
            style: TextStyles.h1(context, AppColors.dark),
          ),
        ),
        context.emptySizedHeightBoxNormal,
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppText.paragraph,
            style: TextStyles.p(context, AppColors.darkGrey),
          ),
        ),
        context.emptySizedHeightBoxNormal,
        CustomTextField(
          height: context.height * 0.06,
          width: context.width * 0.9,
          hinttext: AppText.email,
          radius: 5.0,
        ),
        context.emptySizedHeightBoxLow,
        context.emptySizedHeightBoxLow,
        CustomTextField(
          height: context.height * 0.06,
          width: context.width * 0.9,
          hinttext: AppText.password,
          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
          radius: 5.0,
        ),
        context.emptySizedHeightBoxHigh,
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            AppText.forgot,
            style: TextStyles.buttonText(context, AppColors.darkGrey),
          ),
        ),
        context.emptySizedHeightBoxHigh,
        CustomElevatedButton(
          color: AppColors.mainGreenPrimary,
          height: context.height * 0.07,
          width: context.width * 0.9,
          onPressed: () {},
          borderRadius: 5.0,
          child: const Text(AppText.login),
        ),
      ],
    );
  }
}
