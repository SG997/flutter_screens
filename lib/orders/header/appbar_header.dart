import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class AppbarHeader extends StatelessWidget {
  const AppbarHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: 27,
          height: 27,
          decoration: BoxDecoration(
            color: const Color(0xffc3d6e6),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: ImageIcon(
              const AssetImage(
                "assets/images/chevron.png",
              ),
              size: 15,
              color: AppData.defaultColors.cobalt,
            ),
          ),
        ),
        Text(
          'כותרת המבחן',
          style: AppFonts.heeboBold.copyWith(
            color: AppData.defaultColors.cobaltFour,
            fontSize: 14.0,
            height: 1.9,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: ImageIcon(
            const AssetImage(
              "assets/images/burger_meun.png",
            ),
            color: AppData.defaultColors.cobalt,
            size: 20,
          ),
        ),
      ],
    );
  }
}
