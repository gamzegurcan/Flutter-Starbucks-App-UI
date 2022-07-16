import 'package:flutter/material.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/core/constant/styles/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Widget? leading;

  const CustomAppBar({Key? key, this.leading, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leading: leading,
      backgroundColor: AppColors.white,
      title: Text(
        title!,
        style: TextStyles.h2(context, AppColors.darkGreenPrimary),
      ),
      actions: [
        IconButton(
          icon: Image.asset('asset/icon/icon.png'),
          color: AppColors.darkGreenPrimary,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('asset/icon/dot.png'),
          color: AppColors.darkGreenPrimary,
          onPressed: () {},
        ),
      ],
    );
  }
}
