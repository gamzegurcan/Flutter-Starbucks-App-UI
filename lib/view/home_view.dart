import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/product/widget/app_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: _fabButton(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: const AppBarWidget(
          title: AppText.title,
        ),
      ),
      body: _body(context),
    );
  }

  Padding _fabButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.mainGreenPrimary,
        child: const Icon(Icons.add),
      ),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 0.91,
      width: context.width * 1,
      child: Column(
        children: [
          context.emptySizedHeightBoxLow3x,
          _topCard(context),
          context.emptySizedHeightBoxHigh,
          context.emptySizedHeightBoxHigh,
          context.emptySizedHeightBoxLow3x,
          _bottomContainer(context),
        ],
      ),
    );
  }

  Container _bottomContainer(BuildContext context) {
    return Container(
      height: context.height * 0.373,
      width: context.width * 1,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: context.horizontalPaddingMedium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.campaigns,
              style: TextStyles.h4(context, AppColors.dark),
            ),
            Image.asset('asset/images/home.png'),
            Text(
              AppText.lorem,
              style: TextStyles.h4(context, AppColors.dark),
            ),
            Text(
              AppText.loremText,
              style: TextStyles.p(context, AppColors.dark),
            ),
          ],
        ),
      ),
    );
  }

  Container _topCard(BuildContext context) {
    return Container(
      height: context.height * 0.16,
      width: context.width * 0.9,
      decoration: const BoxDecoration(
        color: AppColors.mainGreenPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: context.height * 0.16,
            child: Image.asset(
              'asset/images/logo.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 10,
            bottom: 0,
            child: Padding(
              padding: context.paddingMedium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppText.money,
                      style: TextStyles.h5(context, AppColors.white)),
                  context.emptySizedHeightBoxLow,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppText.cost3,
                          style: TextStyles.h1(context, AppColors.white)),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: AppText.load,
                            style: TextStyles.buttonText(
                                context, AppColors.white)),
                        const WidgetSpan(
                            child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.white,
                          size: 15,
                        ))
                      ])),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
