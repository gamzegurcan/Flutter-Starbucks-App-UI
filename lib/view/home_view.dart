import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/app_bar_widget.dart';

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
        child: const AppBarWidget(
          title: AppText.title,
        ),
      ),
      body: SizedBox(
        height: context.height * 0.91,
        width: context.width * 1,
        child: Column(
          children: [
            context.emptySizedHeightBoxLow3x,
          ],
        ),
      ),
    );
  }
}
