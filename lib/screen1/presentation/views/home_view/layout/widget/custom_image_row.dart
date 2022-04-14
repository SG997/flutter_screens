import 'package:flutter/material.dart';

import '../../../../../config/front_end_config.dart';

class CustomImageRow extends StatelessWidget {
  const CustomImageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.end,
      children: [

        const SizedBox(
          width: 10,
        ),

        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: FrontEndConfigs.kButtonColor,width: 2)),
          child: Image.asset(
            'assets/images/chair.jpg',
            fit: BoxFit.cover,
          ),
        ),

      ],
    );
  }
}
