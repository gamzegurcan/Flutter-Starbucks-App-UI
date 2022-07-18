import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/custom_elevated_button.dart';

class CustomMenuRow extends StatelessWidget {
  final String? path;
  final String? title;

  const CustomMenuRow({Key? key, this.title, this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(path!),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: TextStyles.h3(context, AppColors.dark),
            ),
            context.emptySizedHeightBoxLow,
            Text(
              AppText.cost,
              style: TextStyles.h5(context, AppColors.dark),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow3x,
            CustomElevatedButton(
              width: context.width * 0.16,
              height: context.height * 0.04,
              color: AppColors.mainGreenPrimary,
              child: Text(
                AppText.smallButtonText,
                style: TextStyles.buttonText(context, AppColors.white),
              ),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
