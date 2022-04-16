
import 'package:flutter/material.dart';

import '../../../../config/app_data.dart';



class TextIconRow extends StatelessWidget {
  String text;
   TextIconRow(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        const Icon(
          Icons.check,
          color:  Color(0xff5996e9),
          size: 13,
        ),

        const SizedBox(
          width: 8,
        ),

        Text(text, style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppData.defaultColors.cobalt),
        ),
      ],
    );
  }
}
