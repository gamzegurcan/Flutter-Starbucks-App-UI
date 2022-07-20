import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/product/widget/app_bar_widget.dart';
import 'package:starbucks_app/product/widget/custom_elevated_button.dart';
import 'package:starbucks_app/product/widget/menu_row.dart';
import 'package:starbucks_app/product/widget/order_card.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: const AppBarWidget(
          title: AppText.order,
        ),
      ),
      body: SizedBox(
        height: context.height * 1,
        width: context.width * 1,
        child: Column(
          children: [
            context.emptySizedHeightBoxLow,
            const OrderCard(),
            context.emptySizedHeightBoxLow,
            Container(
              width: context.width * 1,
              height: context.height * 0.47,
              color: AppColors.white,
              child: Padding(
                padding: context.horizontalPaddingNormal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppText.menu,
                      style: TextStyles.h4(context, AppColors.dark),
                    ),
                    Row(
                      children: [
                        CustomElevatedButton(
                          width: context.width * 0.3,
                          height: context.height * 0.06,
                          color: AppColors.buttonGrey,
                          borderRadius: 5,
                          onPressed: () {},
                          child: Text(AppText.bestSeller,
                              style: TextStyles.buttonText(
                                  context, AppColors.dark)),
                        )
                      ],
                    ),
                    MenuRow(
                      height: context.height * 0.1,
                      width: context.width * 0.9,
                      title: AppText.hazelnut,
                      path: 'asset/images/toffeeNut.png',
                    ),
                    MenuRow(
                      height: context.height * 0.1,
                      width: context.width * 0.9,
                      title: AppText.hazelnut,
                      path: 'asset/images/toffeeNut.png',
                    ),
                    MenuRow(
                      height: context.height * 0.1,
                      width: context.width * 0.9,
                      title: AppText.hazelnut,
                      path: 'asset/images/toffeeNut.png',
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
