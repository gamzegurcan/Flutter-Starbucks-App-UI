import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';
import 'package:starbucks_app/product/constant/styles/text_styles.dart';
import 'package:starbucks_app/core/constant/text/app_text.dart';
import 'package:starbucks_app/product/widget/inc_dec_button.dart.dart';
import 'package:starbucks_app/product/widget/app_bar_widget.dart';
import 'package:starbucks_app/product/widget/selectable_card.dart';
import 'package:starbucks_app/product/widget/sub_button.dart';
import 'package:starbucks_app/view/order_detail_view.dart';


class MenuDetailView extends StatefulWidget {
  const MenuDetailView({Key? key}) : super(key: key);

  @override
  State<MenuDetailView> createState() => _MenuDetailViewState();
}

class _MenuDetailViewState extends State<MenuDetailView> {
  bool tallCardSelect = false;
  bool grandeCardSelect = false;
  bool ventiCardSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.height * 0.09,
        ),
        child: AppBarWidget(
          title: AppText.orderDetail,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('asset/icon/back.png'),
          ),
        ),
      ),
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 91,
      width: context.width * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          context.emptySizedHeightBoxNormal,
          _coffeeImage(context),
          context.emptySizedHeightBoxNormal,
          _coffeeName(context),
          context.emptySizedHeightBoxLow,
          _coffeeDescription(context),
          context.emptySizedHeightBoxNormal,
          _bottomContainer(context),
        ],
      ),
    );
  }

  Container _bottomContainer(BuildContext context) {
    return Container(
      height: context.height * 0.35,
      width: context.width * 1,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: context.paddingNormal * 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                AppText.cost2,
                style: TextStyles.h1(context, AppColors.darkGrey),
              ),
            ),
            _coffeeQuantity(context),
            SubButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderDetailView(),
                  ),
                );
              },
              child: Text(
                AppText.buttonText,
                style: TextStyles.buttonText(context, AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align _coffeeQuantity(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IncDecButton(
            width: context.width * 0.35,
            height: context.height * 0.05,
          ),
          //context.emptySizedHeightBoxLow,
          SizedBox(
            width: context.width * 0.4,
            height: context.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableCard(
                  selectSize: tallCardSelect,
                  height: context.height * 0.05,
                  image: 'asset/icon/tall.png',
                ),
                SelectableCard(
                  selectSize: grandeCardSelect,
                  height: context.height * 0.05,
                  image: 'asset/icon/grande.png',
                ),
                SelectableCard(
                  selectSize: ventiCardSelect,
                  height: context.height * 0.05,
                  image: 'asset/icon/venti.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Align _coffeeDescription(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: context.horizontalPaddingNormal * 3,
        child: Text(
          AppText.toffeNutText,
          style: TextStyles.p(context, AppColors.dark),
        ),
      ),
    );
  }

  Align _coffeeName(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: context.horizontalPaddingNormal * 3,
        child: Text(
          AppText.toffeeNut,
          style: TextStyles.h3(context, AppColors.dark),
        ),
      ),
    );
  }

  Container _coffeeImage(BuildContext context) {
    return Container(
      width: context.width * 0.7,
      height: context.height * 0.26,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/toffeeNut.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
