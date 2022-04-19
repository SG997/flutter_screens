import 'package:flutter/cupertino.dart';
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


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppData.defaultColors.white,
      height: MediaQuery.of(context).size.height / 1.75,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: Utils.orderRowList.length,
          itemBuilder: (context, i) {
            return OrderRow(
                imageUrl: Utils.orderRowList[i].imageUrl!,
                headline: Utils.orderRowList[i].headLine!,
                secondHeadLine: Utils.orderRowList[i].secondHeadLine!,
                amount: Utils.orderRowList[i].amount!,
                areaNumber: Utils.orderRowList[i].areaNumber!);
          }),
    );
  }
}
