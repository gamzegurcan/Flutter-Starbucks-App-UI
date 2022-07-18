import 'package:flutter/material.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';

class IncDecButton extends StatelessWidget {
  final double? height;
  final double? width;

  const IncDecButton({Key? key, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 250,
      height: height ?? 50,
      decoration: const BoxDecoration(
        color: AppColors.buttonGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('asset/icon/minus.png'),
          ),
          Text(
            AppText.button,
            style: TextStyles.buttonText(context, AppColors.darkGrey),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('asset/icon/plus.png'),
          ),
        ],
      ),
    );
  }
}
