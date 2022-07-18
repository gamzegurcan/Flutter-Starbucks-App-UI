import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/custom_elevated_button.dart';

class CustomMenuRow extends StatelessWidget {
  final String? path;
  final String? title;
  final double? height;
  final double? width;

  const CustomMenuRow(
      {Key? key,
      required this.title,
      required this.height,
      required this.width,
      required this.path})
      : super(key: key);

  @override
    Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width! / 1.5,
            child: Row(
              children: [
                SizedBox(
                    child: Image.asset(
                  path!,
                  fit: BoxFit.cover,
                )),
                context.emptySizedWidthBoxLow3x,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          title!,
                          style: TextStyles.h3(context, AppColors.dark),
                        ),
                      ),
                      context.emptySizedHeightBoxLow,
                      Text(
                        AppText.cost,
                        style: TextStyles.h5(context, AppColors.dark),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              context.emptySizedHeightBoxLow3x,
              context.emptySizedHeightBoxLow3x,
              CustomElevatedButton(
                width: context.width * 0.16,
                height: context.height * 0.04,
                borderRadius: 5,
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
      ),
    );
  }
}
