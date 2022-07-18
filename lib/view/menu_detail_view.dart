import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/custom_add_sub_button.dart';
import 'package:starbucks_app/product/widget/custom_app_bar.dart';
import 'package:starbucks_app/product/widget/custom_subbutton.dart';

class MenuDetailView extends StatelessWidget {
  const MenuDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: CustomAppBar(
          title: AppText.orderDetail,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset('asset/icon/back.png'),
          ),
        ),
      ),
      body: SizedBox(
        height: context.height * 91,
        width: context.width * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            context.emptySizedHeightBoxNormal,
            Container(
              width: context.width * 0.7,
              height: context.height * 0.26,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/toffeeNut.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            context.emptySizedHeightBoxNormal,
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: context.horizontalPaddingNormal * 3,
                child: Text(
                  AppText.toffeeNut,
                  style: TextStyles.h3(context, AppColors.dark),
                ),
              ),
            ),
            context.emptySizedHeightBoxLow,
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: context.horizontalPaddingNormal * 3,
                child: Text(
                  AppText.toffeNutText,
                  style: TextStyles.p(context, AppColors.dark),
                ),
              ),
            ),
            context.emptySizedHeightBoxNormal,
            Container(
              height: context.height * 0.35,
              width: context.width * 1,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: context.paddingNormal * 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        AppText.cost2,
                        style: TextStyles.h1(context, AppColors.darkGrey),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomAddSubButton(
                            width: context.width * 0.3,
                            height: context.height * 0.05,
                          ),
                          context.emptySizedHeightBoxLow,
                          SizedBox(
                            width: context.width * 0.4,
                            height: context.height * 0.07,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('asset/icon/tall.png'),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('asset/icon/grande.png'),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('asset/icon/venti.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomSubButton(
                      child: Text(
                        AppText.buttonText,
                        style: TextStyles.buttonText(context, AppColors.white),
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
