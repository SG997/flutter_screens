
import 'package:flutter/cupertino.dart';

import 'order_expandable_bottom.dart';
import 'order_expandable_top.dart';


class ExpandableOrder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpandableOrder();
  }
}

class _ExpandableOrder extends State<ExpandableOrder> {
  bool isOpen = false;
  updateState(){
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: ()=>{
              updateState()
            },
            child: OrderExpandableTop(isOpen)
        ),
        Visibility(
            visible: isOpen,
            child: OrderExpandableBottom()
        )
      ],
    );
  }
}