import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomTextField extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hinttext;
  final double? radius;

  const CustomTextField(
      {Key? key, this.height, this.width, this.hinttext, this.suffixIcon, this.prefixIcon, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 250,
      height: height ?? 50,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 15.0)),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hinttext,
            hintStyle: context.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.normal),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(radius ?? 10.0),
            ),
          ),
        ),
      ),
    );
  }
}