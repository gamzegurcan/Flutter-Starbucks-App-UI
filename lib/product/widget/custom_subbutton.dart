import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/widget/custom_elevated_button.dart';

class CustomSubButton extends StatelessWidget {
  final Widget child;

  final VoidCallback? onPressed;

  const CustomSubButton({Key? key, this.onPressed, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      child: child,
      color: AppColors.mainGreenPrimary,
      height: context.height * 0.08,
      width: context.width * 0.9,
      borderRadius: 5.0,
    );
  }
}
