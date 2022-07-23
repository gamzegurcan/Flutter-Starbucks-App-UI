import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/product/widget/app_bar_widget.dart';
import 'package:starbucks_app/product/widget/menu_row.dart';
import 'package:starbucks_app/product/widget/order_card.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: AppBarWidget(
          title: AppText.selectOrderDetail,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('asset/icon/back.png'),
          ),
        ),
      ),
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 0.91,
      width: context.width * 1,
      child: _column(context),
    );
  }

  Column _column(BuildContext context) {
    return Column(
      children: [
        context.emptySizedHeightBoxLow,
        const OrderCard(),
        context.emptySizedHeightBoxLow,
        Container(
          width: context.width * 1,
          height: context.height * 0.35,
          color: AppColors.white,
          child: Padding(
            padding: context.paddingNormal,
            child: Column(
              children: [
                _topText(context),
                context.emptySizedHeightBoxLow3x,
                MenuRow(
                  boolfalse: true,
                  title: AppText.hazelnut,
                  height: context.height * 0.15,
                  width: context.width * 1,
                  path: 'asset/images/hazelnut.png',
                ),
                Divider(
                  height: context.height * 0.02,
                ),
                Padding(
                  padding: context.paddingNormal,
                  child: _bottomText(context),
                ),
              ],
            ),
          ),
        ),
        context.emptySizedHeightBoxLow,
        _bottomContainer(context),
      ],
    );
  }

  Row _topText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppText.orderList,
          style: TextStyles.h4(context, AppColors.dark),
        ),
        Text(
          AppText.addMore,
          style: TextStyles.h5(context, AppColors.darkGreenPrimary),
        ),
      ],
    );
  }

  Row _bottomText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppText.total,
          style: TextStyles.h4(context, AppColors.dark),
        ),
        Text(
          AppText.totalPrice,
          style: TextStyles.h2(context, AppColors.dark),
        ),
      ],
    );
  }

  Container _bottomContainer(BuildContext context) {
    return Container(
      width: context.width * 1,
      height: context.height * 0.19,
      color: AppColors.white,
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppText.payment,
                    style: TextStyles.h4(context, AppColors.dark)),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: AppText.load,
                      style: TextStyles.buttonText(
                          context, AppColors.darkGreenPrimary)),
                  const WidgetSpan(
                      child: Icon(
                    Icons.arrow_forward,
                    color: AppColors.darkGreenPrimary,
                    size: 15,
                  ))
                ])),
              ],
            ),
            context.emptySizedHeightBoxLow,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _leftContainer(context),
                context.emptySizedWidthBoxNormal,
                _rightContainer(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _rightContainer(BuildContext context) {
    return Container(
      height: context.height * 0.11,
      width: context.width * 0.32,
      decoration: const BoxDecoration(
        color: AppColors.buttonGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: context.paddingLow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.card,
              style: TextStyles.h5(context, AppColors.dark),
            ),
            Text(
              AppText.card2,
              style: TextStyles.h5(context, AppColors.dark),
            ),
          ],
        ),
      ),
    );
  }

  Container _leftContainer(BuildContext context) {
    return Container(
      height: context.height * 0.11,
      width: context.width * 0.32,
      decoration: const BoxDecoration(
        color: AppColors.mainGreenPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: context.height * 0.11,
            child: Image.asset(
              'asset/images/logo2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: context.paddingLow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.money,
                  style: TextStyles.h5(
                    context,
                    AppColors.white,
                  ),
                ),
                context.emptySizedHeightBoxLow,
                Text(
                  AppText.cost3,
                  style: TextStyles.h2(context, AppColors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
