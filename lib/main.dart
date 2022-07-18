import 'package:flutter/material.dart';
import 'package:starbucks_app/product/widget/bottom_navbar.dart';
import 'package:starbucks_app/view/authentication/login_view.dart';
import 'package:starbucks_app/view/menu_detail_view.dart';
import 'package:starbucks_app/view/home_view.dart';
import 'package:starbucks_app/view/order_completed_view.dart';
// import 'package:starbucks_app/view/login_view.dart';
import 'package:starbucks_app/view/order_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Starbucks App',
      debugShowCheckedModeBanner: false,
      home: MenuDetailView(),
    );
  }
}
