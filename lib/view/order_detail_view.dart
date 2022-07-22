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
            onPressed: () {},
            icon: Image.asset('asset/icon/back.png'),
          ),
        ),
      ),
      body: SizedBox(
        height: context.height * 0.91,
        width: context.width * 1,
        child: Column(
          children: [
            context.emptySizedHeightBoxLow,
            const OrderCard(),
            context.emptySizedHeightBoxLow,
            Container(
              width: context.width * 1,
              height: context.height * 0.3,
              color: AppColors.white,
              child: Padding(
                padding: context.paddingNormal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppText.orderList,
                          style: TextStyles.h4(context, AppColors.dark),
                        ),
                        Text(
                          AppText.addMore,
                          style: TextStyles.h5(
                              context, AppColors.darkGreenPrimary),
                        ),
                      ],
                    ),
                    context.emptySizedHeightBoxLow3x,
                    MenuRow(
                      title: AppText.hazelnut,
                      height: context.height * 0.1,
                      width: context.width * 0.9,
                      path: 'asset/images/hazelnut.png',
                    ),
                    context.emptySizedHeightBoxLow,
                    // Divider(
                    //   color: AppColors.buttonGrey,
                    //   height: context.height * 0.01,
                    // ),
                    Padding(
                      padding: context.paddingNormal,
                      child: Row(
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
