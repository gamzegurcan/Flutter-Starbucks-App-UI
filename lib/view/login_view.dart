import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/app_colors.dart';
import 'package:starbucks_app/core/constant/app_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        height: context.height * 1,
        width: context.width * 1,
        child: Column(
          children: [
            context.emptySizedHeightBoxHigh,
            Text(
              AppText.title.toUpperCase(),
              textAlign: TextAlign.left,
              style: context.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w900, color: AppColors.darkGreen),
            ),
            context.emptySizedHeightBoxLow3x,
            Text(
              AppText.welcome,
              style: context.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold, color: AppColors.darkText),
            ),
            context.emptySizedHeightBoxLow,
            const Text(
              AppText.paragraph,
            ),
            
          ],
        ),
      ),
    );
  }
}
