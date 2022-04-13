import 'package:flutter/material.dart';
import 'package:flutter_screens/screen1/config/front_end_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TextIconRow extends StatelessWidget {
  String text;
   TextIconRow(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text,style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: FrontEndConfigs.kAppBaseColor
        ),),
        const SizedBox(
          width: 8,
        ),
        const Icon(
          FontAwesomeIcons.check,
          color:  Color(0xff5996e9),
          size: 13,
        ),
      ],
    );
  }
}
