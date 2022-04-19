import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_button.dart';
import 'package:flutter_screens/config/default_colors.dart';
import 'package:flutter_screens/orders/body/OrdersList.dart';
import 'package:flutter_screens/orders/header/appbar_header.dart';
import 'package:flutter_screens/orders/header/orders_header.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _OrdersPage();
  }
}

class _OrdersPage extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: DefaultAppColors.kbgGradientColor,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const AppbarHeader(),
              OrdersHeader(),
              OrdersList(),
              const SizedBox(
                height: 25,
              ),
              AppButton(
                name: 'הכפתור שלי',
                onTapped: () {},
                padding: 10,
                height: 50,
                fontWeight: FontWeight.bold,
                gradient: DefaultAppColors.kbuttonGradientColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
