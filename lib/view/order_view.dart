import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 0.91,
      width: context.width * 1,
      child: Column(
        children: [
          context.emptySizedHeightBoxLow,
          const OrderCard(),
          context.emptySizedHeightBoxLow,
          _menuContainer(context),
        ],
      ),
    );
  }

  Container _menuContainer(BuildContext context) {
    return Container(
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
            SizedBox(
              width: context.width * 1,
              height: context.height * 0.06,
              child: _menuRow(),
            ),
            SizedBox(
              width: context.width * 1,
              height: context.height * 0.33,
              child: _coffeeList(),
            ),
          ],
        ),
      ),
    );
  }

  ListView _menuRow() {
    return ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              CustomElevatedButton(
                color: AppColors.buttonGrey,
                borderRadius: 10,
                width: context.width * 0.28,
                height: context.height * 0.06,
                child: Text(
                  AppText.menuText[index],
                  style: TextStyles.buttonText(
                    context,
                    AppColors.dark,
                  ),
                ),
              ),
              context.emptySizedWidthBoxLow,
            ],
          );
        });
  }

  ListView _coffeeList() {
    return ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              MenuRow(
                height: context.height * 0.1,
                width: context.width * 0.9,
                title: AppText.coffeeMenu[index],
                path: 'asset/images/toffeeNut.png',
              ),
              context.emptySizedHeightBoxNormal,
            ],
          );
        });
  }
}
