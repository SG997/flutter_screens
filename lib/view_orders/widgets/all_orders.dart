

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/app_data.dart';
import '../../config/app_fonts.dart';
import 'authTextField.dart';
import 'exp/expandable_order.dart';

class AllOrders extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AllOrders();
  }

}

class _AllOrders extends State<AllOrders> {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),

          Row(
            children: [

              Expanded(
                child: Container(

                  child: AuthTextField(
                    validator: (val) {},
                    controller: controller,
                    onPwdTap: () {},
                    topText: 'חיפוש הזמנה לפי מספר שם וכו׳',
                  ),
                ),
              ),

              SizedBox(width: 30,),

              Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: AppData.defaultColors.cobalt,
                      borderRadius: BorderRadius.circular(5)),
                  // TODO change to image loaded from network
                  child: Image.asset('assets/images/barcode2.png', color: Colors.white,)),
              SizedBox(width: 20,),
            ],
          ),

          SizedBox(height: 20,),

          Text('הזמנות פעילות', style: AppFonts.heeboMedium.withParams(
              fontSize: 14.0, color: AppData.defaultColors.accent),
          ),

          SizedBox(height: 10,),

          ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, i) {
                return ExpandableOrder();
              },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 8,);
              },
          )
        ],
      ),
    );
  }
}