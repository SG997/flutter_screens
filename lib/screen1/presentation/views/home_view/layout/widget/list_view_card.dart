
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../config/front_end_config.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios_sharp,
                  size: 12,
                ),
                Text('สวัสดี – ครั',style: TextStyle(fontSize: 12,
                color: FrontEndConfigs.kText
                ),),
                Text('345.9',style: TextStyle(fontSize: 11,color: FrontEndConfigs.kAppBaseColor),),
               Text('#34353 ครับ',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,
               color: FrontEndConfigs.kAppBaseColor
               ),),

                Text('21.1.21',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,
                    color: FrontEndConfigs.kAppBaseColor
                ),),

              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
