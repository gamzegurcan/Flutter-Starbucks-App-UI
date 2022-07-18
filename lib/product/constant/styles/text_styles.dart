import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle h1(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 30);
  static TextStyle h2(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 20);
  static TextStyle h3(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 18);
  static TextStyle h4(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.w500, color: color, fontSize: 16);
  static TextStyle h5(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.normal, color: color, fontSize: 16);
  static TextStyle h6(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 14);
  static TextStyle buttonText(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 14);
  static TextStyle p(BuildContext context, Color color) =>
      TextStyle(fontWeight: FontWeight.normal, color: color, fontSize: 14);
}