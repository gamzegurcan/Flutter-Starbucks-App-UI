import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/custom_app_bar.dart';

class OrderDetailView  extends StatelessWidget {
  const OrderDetailView ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: CustomAppBar(
          title: AppText.selectOrderDetail,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset('asset/icon/back.png'),
          ),
        ),
      ),
      
    );
  }
}