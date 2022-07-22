import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/app_bar_widget.dart';
import 'package:starbucks_app/product/widget/sub_button.dart';

class OrderCompletedView extends StatelessWidget {
  const OrderCompletedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: const AppBarWidget(
          title: AppText.orderCompleted,
        ),
      ),
      body: _body(context),
    );
  }
}

SizedBox _body(BuildContext context) {
  return SizedBox(
    height: context.height * 0.91,
    width: context.width * 1,
    child: Column(
      children: [
        context.emptySizedHeightBoxLow3x,
        _topImage(),
        context.emptySizedHeightBoxLow3x,
        Text(
          AppText.orderCompletedText,
          style: TextStyles.h2(context, AppColors.dark),
        ),
        Text(
          AppText.thanks,
          style: TextStyles.h2(context, AppColors.dark),
        ),
        context.emptySizedHeightBoxLow3x,
        _cardContainer(context),
        context.emptySizedHeightBoxLow,
        _bottomContainer(context),
      ],
    ),
  );
}

Stack _topImage() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset('asset/icon/orderbg.png'),
      Image.asset('asset/icon/order.png'),
      Image.asset('asset/icon/ok.png'),
    ],
  );
}

Container _cardContainer(BuildContext context) {
  return Container(
    color: AppColors.white,
    height: context.height * 0.44,
    width: context.width * 1,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        context.emptySizedHeightBoxLow,
        _firstCard(context),
        _secondCard(context),
      ],
    ),
  );
}

Container _bottomContainer(BuildContext context) {
  return Container(
    width: context.width * 1,
    height: context.height * 0.1,
    color: AppColors.white,
    child: Padding(
      padding: context.paddingLow,
      child: SubButton(
        child: Text(
          AppText.closeButton,
          style: TextStyles.buttonText(context, AppColors.white),
        ),
      ),
    ),
  );
}

Card _firstCard(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: AppColors.buttonGrey,
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: SizedBox(
      height: context.height * 0.18,
      width: context.width * 0.9,
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppText.congrat,
                  style: TextStyles.h4(context, AppColors.dark),
                ),
                Container(
                  height: context.height * 0.04,
                  width: context.width * 0.16,
                  decoration: BoxDecoration(
                    color: AppColors.darkGreenPrimary,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '+ 2',
                        style: TextStyles.h4(context, AppColors.white),
                      ),
                      const Icon(
                        Icons.star_border_outlined,
                        color: AppColors.gold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: context.width * 0.15,
                  height: context.height * 0.1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/toffeeNut.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                context.emptySizedWidthBoxLow3x,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppText.point,
                      style: TextStyles.h4(context, AppColors.dark),
                    ),
                    Text(
                      AppText.hazelnut,
                      style: TextStyles.h4(context, AppColors.dark),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Card _secondCard(BuildContext context) {
  return Card(
    color: AppColors.buttonGrey,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: AppColors.buttonGrey,
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: SizedBox(
      height: context.height * 0.15,
      width: context.width * 0.9,
      child: Padding(
        padding: context.paddingMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppText.best,
              style: TextStyles.p(context, AppColors.dark),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star_border_outlined,
                  color: AppColors.darkGreenPrimary,
                ),
                context.emptySizedWidthBoxLow,
                Text(
                  AppText.star,
                  style: TextStyles.h3(context, AppColors.darkGreenPrimary),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
