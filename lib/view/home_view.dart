import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/custom_app_bar.dart';
import 'package:starbucks_app/product/widget/custom_menu_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: const CustomAppBar(
          title: AppText.title,
        ),
      ),
      body: SizedBox(
        height: context.height * 1,
        width: context.width * 1,
        child: Column(
          children: [
            context.emptySizedHeightBoxLow3x,
            // SizedBox(
            //   height: context.height * 0.45,
            //   width: context.width * 0.9,
            //   child: ListView(
            //     children: const [
            //       CustomMenuRow(
            //         path: 'asset/images/hazelnut.png',
            //         title: AppText.hazelnut,
            //       ),
            //       CustomMenuRow(
            //         path: 'asset/images/caramel.png',
            //         title: AppText.caramel,
            //       ),
            //       CustomMenuRow(
            //         path: 'asset/images/mocha.png',
            //         title: AppText.mocha,
            //       ),
            //       CustomMenuRow(
            //         path: 'asset/images/espresso.png',
            //         title: AppText.espresso,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
