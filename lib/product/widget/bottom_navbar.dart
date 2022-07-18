import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/view/home_view.dart';
import 'package:starbucks_app/view/menu_detail_view.dart';
import 'package:starbucks_app/view/order_view.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavbarState createState() => _BottomNavbarState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const OrderView(),
    const HomeView(),
    const MenuDetailView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: context.height * 0.08,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    _onItemTapped(0);
                  },
                  icon: Image.asset(
                    'asset/icon/star.png',
                    color: _selectedIndex == 0
                        ? AppColors.mainGreenPrimary
                        : AppColors.grey,
                  )),
              IconButton(
                  onPressed: () {
                    _onItemTapped(1);
                  },
                  icon: Image.asset(
                    'asset/icon/cup.png',
                    color: _selectedIndex == 1
                        ? AppColors.mainGreenPrimary
                        : AppColors.grey,
                  )),
              IconButton(
                  onPressed: () {
                    _onItemTapped(2);
                  },
                  icon: Image.asset(
                    'asset/icon/wallet.png',
                    color: _selectedIndex == 2
                        ? AppColors.mainGreenPrimary
                        : AppColors.grey,
                  )),
              IconButton(
                onPressed: () {
                  _onItemTapped(3);
                },
                icon: Image.asset(
                  'asset/icon/location.png',
                  color: _selectedIndex == 3
                      ? AppColors.mainGreenPrimary
                      : AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
