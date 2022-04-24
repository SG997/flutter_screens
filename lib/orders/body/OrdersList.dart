import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/orders/body/row/utils.dart';
import 'package:flutter_screens/orders/body/row/order_row.dart';

class OrdersList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OrdersList();
  }
}

class _OrdersList extends State<OrdersList> {
  int index = -1;
  int counterIndex = -1;

  void setIndex(int _index) {
    index = _index;
    setState(() {});
  }
  void setCounterIndex(int _index) {
    counterIndex = _index;
    setState(() {});
  }

  int getIndex() => index;
  int getCounterIndex() => counterIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppData.defaultColors.white,
      height: MediaQuery.of(context).size.height / 1.75,
      child: ListView.builder(
          itemCount: Utils.orderRowList.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onPanUpdate: (details) {
                print(getCounterIndex());
                print(getIndex());
                if (details.delta.dx > 0) {
                  print("left");
                  print("Blue widget called");
                  setCounterIndex(-1);
                  setIndex(i);
                } else {
                  print("COunter");
                  setIndex(-1);
                  setCounterIndex(i);
                }
              },
              child: OrderRow(
                  index: i,
                  isCounterSelected: getCounterIndex() == i,
                  isSelected: getIndex() == i,
                  imageUrl: Utils.orderRowList[i].imageUrl!,
                  headline: Utils.orderRowList[i].headLine!,
                  secondHeadLine: Utils.orderRowList[i].secondHeadLine!,
                  amount: Utils.orderRowList[i].amount!,
                  areaNumber: Utils.orderRowList[i].areaNumber!),
            );
          }),
    );
  }
}
