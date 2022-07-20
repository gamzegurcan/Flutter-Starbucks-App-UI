import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  final String? title;

  const MenuButton(
      {Key? key,
      this.color,
      this.height,
      this.width,
      this.title,
      this.onPressed,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Text(title!),
      ),
    );
  }
}
