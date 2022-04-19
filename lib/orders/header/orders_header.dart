import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class OrdersHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Orders_header();
  }
}

class _Orders_header extends State<OrdersHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25,),
          Text(
            'כותרת  339284320 ',
            style: AppFonts.heeboBold.copyWith(
              color: AppData.defaultColors.cobaltFour,
              fontSize: 20.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'שש 6 מספר מוצר',
                style: AppFonts.heeboNormal.copyWith(
                  color: AppData.defaultColors.cobaltFour,
                  fontSize: 16.0,
                ),
              ),
              Container(
                  height: 27,
                  width: 27,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xffc3d6e6),
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    'assets/images/barcode2.png',
                    color: AppData.defaultColors.cobalt,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
