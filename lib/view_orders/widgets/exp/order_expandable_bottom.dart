
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../screen1/presentation/views/home_view/layout/widget/custom_app_button.dart';
import '../../../screen1/presentation/views/home_view/layout/widget/custom_image_row.dart';
import '../../../screen1/presentation/views/home_view/layout/widget/text_icon_row.dart';


class OrderExpandableBottom extends StatefulWidget {
  OrderExpandableBottom({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _OrderExpandableBottom();
  }

}

class _OrderExpandableBottom extends State<OrderExpandableBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          CustomImageRow(),

          SizedBox(height: 10,),

          TextIconRow('6 מוצרים'),

          SizedBox(height: 8,),

          TextIconRow('שולם 340₪'),

          SizedBox(height: 8,),

          TextIconRow('משלוח עד הבית'),

          SizedBox(height: 20,),

          Align(
            alignment: Alignment.topRight,
            child: CustomAppButton('לכל פרטי ההזמנה', () {}),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }

}