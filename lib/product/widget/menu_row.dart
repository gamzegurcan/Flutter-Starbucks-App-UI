import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/custom_elevated_button.dart';
import 'package:starbucks_app/view/menu_detail_view.dart';
import 'inc_dec_button.dart.dart';

class MenuRow extends StatelessWidget {
  late bool? boolfalse;
  final String? path;
  final String? title;
  final double? height;
  final double? width;

  MenuRow({
    Key? key,
    required this.title,
    required this.height,
    required this.width,
    required this.path,
    required this.boolfalse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width! * 0.9,
            child: Row(
              children: [
                SizedBox(
                    child: Image.asset(
                  path!,
                  fit: BoxFit.cover,
                )),
                context.emptySizedWidthBoxLow3x,
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
                    context.emptySizedHeightBoxLow,
                    Row(
                      children: [
                        SizedBox(
                          height: context.height * 0.04,
                          width: context.width * 0.48,
                          child: Visibility(
                            visible: boolfalse!,
                            child: Row(
                              children: [
                                IncDecButton(
                                  height: context.height * 0.04,
                                  width: context.width * 0.26,
                                ),
                                context.emptySizedWidthBoxLow,
                                _ventiButtoon(context),
                              ],
                            ),
                          ),
                        ),
                        context.emptySizedWidthBoxLow,
                        CustomElevatedButton(
                          width: context.width * 0.16,
                          height: context.height * 0.04,
                          borderRadius: 5,
                          color: AppColors.mainGreenPrimary,
                          child: Text(
                            AppText.smallButtonText,
                            style:
                                TextStyles.buttonText(context, AppColors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MenuDetailView(),
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _ventiButtoon(BuildContext context) {
    return SizedBox(
      child: CustomElevatedButton(
        color: AppColors.buttonGrey,
        height: context.height * 0.04,
        width: context.width * 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Venti",
              style: TextStyles.buttonText(context, AppColors.grey),
            ),
            const Expanded(
              child: Icon(
                Icons.arrow_downward,
                size: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
