import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      width: context.width * 1,
      color: AppColors.white,
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.takeout,
              style: TextStyles.h4(context, AppColors.dark),
            ),
            SizedBox(
              width: context.width * 0.92,
              height: context.height * 0.13,
              child: _timeCard(context),
            ),
            SizedBox(
              width: context.width * 0.92,
              height: context.height * 0.1,
              child: _locationCard(context),
            ),
          ],
        ),
      ),
    );
  }

  Card _timeCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.buttonGrey,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: AppColors.white,
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            timeInformation(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('asset/icon/clock.png'),
                    context.emptySizedWidthBoxNormal,
                    Text(
                      AppText.time,
                      style: TextStyles.h4(context, AppColors.dark),
                    ),
                  ],
                ),
                Text(
                  AppText.change,
                  style: TextStyles.buttonText(
                      context, AppColors.darkGreenPrimary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row timeInformation(BuildContext context) {
    return Row(
      children: [
        Text(
          AppText.cardInfo,
          style: TextStyles.p(context, AppColors.grey),
        ),
      ],
    );
  }

  Card _locationCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.buttonGrey,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: AppColors.white,
      child: Padding(
        padding: context.paddingNormal,
        child: locationInformation(context),
      ),
    );
  }

  Row locationInformation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('asset/icon/house.png'),
            context.emptySizedWidthBoxNormal,
            Text(
              AppText.home,
              style: TextStyles.h4(context, AppColors.dark),
            ),
          ],
        ),
        Text(
          AppText.change,
          style: TextStyles.buttonText(context, AppColors.darkGreenPrimary),
        ),
      ],
    );
  }
}
